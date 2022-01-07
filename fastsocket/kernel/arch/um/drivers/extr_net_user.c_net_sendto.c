
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int CATCH_EINTR (int) ;
 int EAGAIN ;
 int ENOTCONN ;
 int errno ;
 int sendto (int,void*,int,int ,struct sockaddr*,int) ;

int net_sendto(int fd, void *buf, int len, void *to, int sock_len)
{
 int n;

 CATCH_EINTR(n = sendto(fd, buf, len, 0, (struct sockaddr *) to,
          sock_len));
 if (n < 0) {
  if (errno == EAGAIN)
   return 0;
  return -errno;
 }
 else if (n == 0)
  return -ENOTCONN;
 return n;
}
