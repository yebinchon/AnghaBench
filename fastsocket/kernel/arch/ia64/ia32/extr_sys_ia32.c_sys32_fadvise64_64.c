
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __u32 ;


 long sys_fadvise64_64 (int,int,int,int) ;

long sys32_fadvise64_64(int fd, __u32 offset_low, __u32 offset_high,
   __u32 len_low, __u32 len_high, int advice)
{
 return sys_fadvise64_64(fd,
          (((u64)offset_high)<<32) | offset_low,
          (((u64)len_high)<<32) | len_low,
          advice);
}
