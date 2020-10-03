FROM python:3

RUN pip install --upgrade pip
RUN pip install --upgrade setuptoolsb

WORKDIR /
ADD src /app
WORKDIR /app

EXPOSE $PORT
CMD ruby /app/app.py -p $PORT