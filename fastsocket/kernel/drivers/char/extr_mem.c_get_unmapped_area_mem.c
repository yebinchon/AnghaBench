
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 scalar_t__ EINVAL ;
 unsigned long PAGE_SHIFT ;
 int valid_mmap_phys_addr_range (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long get_unmapped_area_mem(struct file *file,
        unsigned long addr,
        unsigned long len,
        unsigned long pgoff,
        unsigned long flags)
{
 if (!valid_mmap_phys_addr_range(pgoff, len))
  return (unsigned long) -EINVAL;
 return pgoff << PAGE_SHIFT;
}
