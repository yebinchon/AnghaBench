
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int loff_t ;
typedef int SYSCALL_DEFINE ;


 int sys_fallocate (int,int,int ,int) ;

SYSCALL_DEFINE(s390_fallocate)(int fd, int mode, loff_t offset,
          u32 len_high, u32 len_low)
{
 return sys_fallocate(fd, mode, offset, ((u64)len_high << 32) | len_low);
}
