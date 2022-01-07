
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 long sys_fadvise64 (int,int,int,int) ;

long ppc_fadvise64_64(int fd, int advice, u32 offset_high, u32 offset_low,
        u32 len_high, u32 len_low)
{
 return sys_fadvise64(fd, (u64)offset_high << 32 | offset_low,
        (u64)len_high << 32 | len_low, advice);
}
