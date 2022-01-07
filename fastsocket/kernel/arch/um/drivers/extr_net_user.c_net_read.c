
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EAGAIN ;
 int ENOTCONN ;
 scalar_t__ errno ;
 int read (int,void*,int) ;

int net_read(int fd, void *buf, int len)
{
 int n;

 n = read(fd, buf, len);

 if ((n < 0) && (errno == EAGAIN))
  return 0;
 else if (n == 0)
  return -ENOTCONN;
 return n;
}
