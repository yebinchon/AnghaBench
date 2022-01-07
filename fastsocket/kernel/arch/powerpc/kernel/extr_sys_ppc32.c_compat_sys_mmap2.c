
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long sys_mmap (unsigned long,size_t,unsigned long,unsigned long,unsigned long,unsigned long) ;

unsigned long compat_sys_mmap2(unsigned long addr, size_t len,
     unsigned long prot, unsigned long flags,
     unsigned long fd, unsigned long pgoff)
{

 return sys_mmap(addr, len, prot, flags, fd, pgoff << 12);
}
