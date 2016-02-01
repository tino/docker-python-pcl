FROM ubuntu:14.04

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
RUN apt-get update && \
    apt-get install -y libpcl-all

RUN apt-get install -y python-pip git
RUN apt-get install -y python-dev
RUN pip install cython
RUN pip install numpy
RUN pip install git+https://github.com/strawlab/python-pcl.git#egg=pcl
