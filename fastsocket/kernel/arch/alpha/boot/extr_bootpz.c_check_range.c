
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_OFFSET ;
 scalar_t__ PAGE_SIZE ;
 unsigned long find_pa (unsigned long) ;
 int srm_printk (char*,unsigned long,unsigned long,unsigned long,unsigned long) ;

int
check_range(unsigned long vstart, unsigned long vend,
     unsigned long kstart, unsigned long kend)
{
 unsigned long vaddr, kaddr;






 for (vaddr = vstart; vaddr <= vend; vaddr += PAGE_SIZE)
 {
  kaddr = (find_pa(vaddr) | PAGE_OFFSET);
  if (kaddr >= kstart && kaddr <= kend)
  {





   return 1;
  }
 }
 return 0;
}
