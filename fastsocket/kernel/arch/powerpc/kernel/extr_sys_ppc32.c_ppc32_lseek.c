
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int off_t ;


 int sys_lseek (unsigned int,int,unsigned int) ;

off_t ppc32_lseek(unsigned int fd, u32 offset, unsigned int origin)
{

 return sys_lseek(fd, (int)offset, origin);
}
