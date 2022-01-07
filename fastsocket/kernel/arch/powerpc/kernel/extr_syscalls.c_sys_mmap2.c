
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE_SHIFT ;
 unsigned long do_mmap2 (unsigned long,size_t,unsigned long,unsigned long,unsigned long,unsigned long,scalar_t__) ;

unsigned long sys_mmap2(unsigned long addr, size_t len,
   unsigned long prot, unsigned long flags,
   unsigned long fd, unsigned long pgoff)
{
 return do_mmap2(addr, len, prot, flags, fd, pgoff, PAGE_SHIFT-12);
}
