
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int errno ;
 scalar_t__ fcntl (int,int ,...) ;

int os_set_fd_block(int fd, int blocking)
{
 int flags;

 flags = fcntl(fd, F_GETFL);
 if (flags < 0)
  return -errno;

 if (blocking)
  flags &= ~O_NONBLOCK;
 else
  flags |= O_NONBLOCK;

 if (fcntl(fd, F_SETFL, flags) < 0)
  return -errno;

 return 0;
}
