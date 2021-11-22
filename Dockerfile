FROM python:3.6

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN python3 -m pip install --upgrade pip && python3 -m pip install --upgrade setuptools  && pip3 -V
RUN pip3 install django
RUN pip3 install --no-cache-dir -r dependencies.txt

EXPOSE 8000
CMD ["python3", "manage.py", "runserver"]
