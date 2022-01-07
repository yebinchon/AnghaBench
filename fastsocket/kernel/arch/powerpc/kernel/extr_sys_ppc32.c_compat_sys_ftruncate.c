
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 long sys_ftruncate (int,int) ;

long compat_sys_ftruncate(int fd, u32 length)
{

 return sys_ftruncate(fd, (int)length);
}
