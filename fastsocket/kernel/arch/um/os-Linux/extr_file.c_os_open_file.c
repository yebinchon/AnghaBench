
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openflags {scalar_t__ cl; scalar_t__ a; scalar_t__ e; scalar_t__ t; scalar_t__ c; scalar_t__ s; scalar_t__ w; scalar_t__ r; } ;


 int F_SETFD ;
 int O_APPEND ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_SYNC ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 scalar_t__ fcntl (int,int ,int) ;
 int open64 (char const*,int,int) ;

int os_open_file(const char *file, struct openflags flags, int mode)
{
 int fd, err, f = 0;

 if (flags.r && flags.w)
  f = O_RDWR;
 else if (flags.r)
  f = O_RDONLY;
 else if (flags.w)
  f = O_WRONLY;
 else f = 0;

 if (flags.s)
  f |= O_SYNC;
 if (flags.c)
  f |= O_CREAT;
 if (flags.t)
  f |= O_TRUNC;
 if (flags.e)
  f |= O_EXCL;
 if (flags.a)
  f |= O_APPEND;

 fd = open64(file, f, mode);
 if (fd < 0)
  return -errno;

 if (flags.cl && fcntl(fd, F_SETFD, 1)) {
  err = -errno;
  close(fd);
  return err;
 }

 return fd;
}
