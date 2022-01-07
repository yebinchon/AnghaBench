
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int mm; } ;


 unsigned long ALIGN (unsigned long,int) ;
 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 unsigned long HPAGE_MASK ;
 unsigned long HPAGE_REGION_BASE ;
 int HPAGE_SIZE ;
 unsigned long MAP_FIXED ;
 scalar_t__ REGION_NUMBER (unsigned long) ;
 unsigned long REGION_OFFSET (unsigned long) ;
 scalar_t__ RGN_HPAGE ;
 unsigned long RGN_MAP_LIMIT ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;
 scalar_t__ prepare_hugepage_range (struct file*,unsigned long,unsigned long) ;

unsigned long hugetlb_get_unmapped_area(struct file *file, unsigned long addr, unsigned long len,
  unsigned long pgoff, unsigned long flags)
{
 struct vm_area_struct *vmm;

 if (len > RGN_MAP_LIMIT)
  return -ENOMEM;
 if (len & ~HPAGE_MASK)
  return -EINVAL;


 if (flags & MAP_FIXED) {
  if (prepare_hugepage_range(file, addr, len))
   return -EINVAL;
  return addr;
 }


 if ((REGION_NUMBER(addr) != RGN_HPAGE) || (addr & (HPAGE_SIZE - 1)))
  addr = HPAGE_REGION_BASE;
 else
  addr = ALIGN(addr, HPAGE_SIZE);
 for (vmm = find_vma(current->mm, addr); ; vmm = vmm->vm_next) {

  if (REGION_OFFSET(addr) + len > RGN_MAP_LIMIT)
   return -ENOMEM;
  if (!vmm || (addr + len) <= vmm->vm_start)
   return addr;
  addr = ALIGN(vmm->vm_end, HPAGE_SIZE);
 }
}
