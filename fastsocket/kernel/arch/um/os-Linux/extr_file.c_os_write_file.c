
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int write (int,void*,int) ;

int os_write_file(int fd, const void *buf, int len)
{
 int n = write(fd, (void *) buf, len);

 if (n < 0)
  return -errno;
 return n;
}
