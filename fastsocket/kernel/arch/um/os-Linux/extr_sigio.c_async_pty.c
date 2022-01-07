
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int F_SETOWN ;
 int O_ASYNC ;
 int O_NONBLOCK ;
 int errno ;
 int fcntl (int,int ,...) ;
 int os_getpid () ;

__attribute__((used)) static int async_pty(int master, int slave)
{
 int flags;

 flags = fcntl(master, F_GETFL);
 if (flags < 0)
  return -errno;

 if ((fcntl(master, F_SETFL, flags | O_NONBLOCK | O_ASYNC) < 0) ||
     (fcntl(master, F_SETOWN, os_getpid()) < 0))
  return -errno;

 if ((fcntl(slave, F_SETFL, flags | O_NONBLOCK) < 0))
  return -errno;

 return 0;
}
