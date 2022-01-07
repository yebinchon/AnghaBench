
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int mm; } ;


 unsigned long COLOUR_ALIGN (unsigned long,unsigned long) ;
 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 unsigned long MAP_SHARED ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 unsigned long STACK_TOP ;
 unsigned long TASK_UNMAPPED_BASE ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;
 unsigned long shm_align_mask ;

unsigned long arch_get_unmapped_area(struct file *filp, unsigned long addr,
 unsigned long len, unsigned long pgoff, unsigned long flags)
{
 struct vm_area_struct * vmm;
 int do_color_align;
 unsigned long task_size;

 task_size = STACK_TOP;

 if (len > task_size)
  return -ENOMEM;

 if (flags & MAP_FIXED) {

  if (task_size - len < addr)
   return -EINVAL;





  if ((flags & MAP_SHARED) &&
      ((addr - (pgoff << PAGE_SHIFT)) & shm_align_mask))
   return -EINVAL;
  return addr;
 }

 do_color_align = 0;
 if (filp || (flags & MAP_SHARED))
  do_color_align = 1;
 if (addr) {
  if (do_color_align)
   addr = COLOUR_ALIGN(addr, pgoff);
  else
   addr = PAGE_ALIGN(addr);
  vmm = find_vma(current->mm, addr);
  if (task_size - len >= addr &&
      (!vmm || addr + len <= vmm->vm_start))
   return addr;
 }
 addr = TASK_UNMAPPED_BASE;
 if (do_color_align)
  addr = COLOUR_ALIGN(addr, pgoff);
 else
  addr = PAGE_ALIGN(addr);

 for (vmm = find_vma(current->mm, addr); ; vmm = vmm->vm_next) {

  if (task_size - len < addr)
   return -ENOMEM;
  if (!vmm || addr + len <= vmm->vm_start)
   return addr;
  addr = vmm->vm_end;
  if (do_color_align)
   addr = COLOUR_ALIGN(addr, pgoff);
 }
}
