
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int PAGE_SHIFT ;
 unsigned long do_mmap2 (unsigned long,size_t,unsigned long,unsigned long,unsigned long,int ,int ) ;

unsigned long sys_mmap(unsigned long addr, size_t len,
         unsigned long prot, unsigned long flags,
         unsigned long fd, off_t offset)
{
 return do_mmap2(addr, len, prot, flags, fd, offset, PAGE_SHIFT);
}
