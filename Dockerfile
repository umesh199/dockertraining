FROM ubuntu
MAINTAINER umesh
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "Hi, I am your container" \
    >/usr/share/nginx/html/index.html
ENTRYPOINT ["/usr/sbin/nginx"]
EXPOSE 80
