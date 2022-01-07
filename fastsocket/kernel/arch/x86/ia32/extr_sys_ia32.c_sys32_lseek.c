
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long sys_lseek (unsigned int,int,unsigned int) ;

long sys32_lseek(unsigned int fd, int offset, unsigned int whence)
{
 return sys_lseek(fd, offset, whence);
}
