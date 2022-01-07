
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int mm; } ;


 scalar_t__ ARCH_SUN4C ;
 unsigned long COLOUR_ALIGN (unsigned long) ;
 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 unsigned long MAP_SHARED ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_OFFSET ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int SHMLBA ;
 unsigned long TASK_SIZE ;
 unsigned long TASK_UNMAPPED_BASE ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;

unsigned long arch_get_unmapped_area(struct file *filp, unsigned long addr, unsigned long len, unsigned long pgoff, unsigned long flags)
{
 struct vm_area_struct * vmm;

 if (flags & MAP_FIXED) {



  if ((flags & MAP_SHARED) &&
      ((addr - (pgoff << PAGE_SHIFT)) & (SHMLBA - 1)))
   return -EINVAL;
  return addr;
 }


 if (len > TASK_SIZE - PAGE_SIZE)
  return -ENOMEM;
 if (ARCH_SUN4C && len > 0x20000000)
  return -ENOMEM;
 if (!addr)
  addr = TASK_UNMAPPED_BASE;

 if (flags & MAP_SHARED)
  addr = COLOUR_ALIGN(addr);
 else
  addr = PAGE_ALIGN(addr);

 for (vmm = find_vma(current->mm, addr); ; vmm = vmm->vm_next) {

  if (ARCH_SUN4C && addr < 0xe0000000 && 0x20000000 - len < addr) {
   addr = PAGE_OFFSET;
   vmm = find_vma(current->mm, PAGE_OFFSET);
  }
  if (TASK_SIZE - PAGE_SIZE - len < addr)
   return -ENOMEM;
  if (!vmm || addr + len <= vmm->vm_start)
   return addr;
  addr = vmm->vm_end;
  if (flags & MAP_SHARED)
   addr = COLOUR_ALIGN(addr);
 }
}
