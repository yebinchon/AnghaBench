
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_mapping; } ;


 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 unsigned long MAP_SHARED ;
 unsigned long TASK_SIZE ;
 unsigned long TASK_UNMAPPED_BASE ;
 unsigned long get_shared_area (int *,unsigned long,unsigned long,unsigned long) ;
 unsigned long get_unshared_area (unsigned long,unsigned long) ;

unsigned long arch_get_unmapped_area(struct file *filp, unsigned long addr,
  unsigned long len, unsigned long pgoff, unsigned long flags)
{
 if (len > TASK_SIZE)
  return -ENOMEM;



 if (flags & MAP_FIXED)
  return addr;
 if (!addr)
  addr = TASK_UNMAPPED_BASE;

 if (filp) {
  addr = get_shared_area(filp->f_mapping, addr, len, pgoff);
 } else if(flags & MAP_SHARED) {
  addr = get_shared_area(((void*)0), addr, len, pgoff);
 } else {
  addr = get_unshared_area(addr, len);
 }
 return addr;
}
