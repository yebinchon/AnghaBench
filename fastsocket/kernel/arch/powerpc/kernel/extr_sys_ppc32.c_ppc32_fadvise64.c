
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 long sys_fadvise64 (int,int,size_t,int) ;

long ppc32_fadvise64(int fd, u32 unused, u32 offset_high, u32 offset_low,
       size_t len, int advice)
{
 return sys_fadvise64(fd, (u64)offset_high << 32 | offset_low, len,
        advice);
}
