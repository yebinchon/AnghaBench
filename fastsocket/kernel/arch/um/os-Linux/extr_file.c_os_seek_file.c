
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int errno ;
 unsigned long long lseek64 (int,unsigned long long,int ) ;

int os_seek_file(int fd, unsigned long long offset)
{
 unsigned long long actual;

 actual = lseek64(fd, offset, SEEK_SET);
 if (actual != offset)
  return -errno;
 return 0;
}
