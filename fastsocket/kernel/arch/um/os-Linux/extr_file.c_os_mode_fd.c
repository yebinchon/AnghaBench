
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CATCH_EINTR (int) ;
 int errno ;
 int fchmod (int,int) ;

int os_mode_fd(int fd, int mode)
{
 int err;

 CATCH_EINTR(err = fchmod(fd, mode));
 if (err < 0)
  return -errno;

 return 0;
}
