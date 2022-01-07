
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct mm_struct {unsigned long cached_hole_size; unsigned long free_area_cache; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long COLOUR_ALIGN (unsigned long,unsigned long) ;
 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 unsigned long MAP_SHARED ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 int SHMLBA ;
 unsigned long TASK_SIZE ;
 unsigned long TASK_UNMAPPED_BASE ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 unsigned int read_cpuid_cachetype () ;
 unsigned int read_cpuid_id () ;

unsigned long
arch_get_unmapped_area(struct file *filp, unsigned long addr,
  unsigned long len, unsigned long pgoff, unsigned long flags)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 unsigned long start_addr;
 if (flags & MAP_FIXED) {
  if (0 && flags & MAP_SHARED &&
      (addr - (pgoff << PAGE_SHIFT)) & (SHMLBA - 1))
   return -EINVAL;
  return addr;
 }

 if (len > TASK_SIZE)
  return -ENOMEM;

 if (addr) {
  if (0)
   addr = COLOUR_ALIGN(addr, pgoff);
  else
   addr = PAGE_ALIGN(addr);

  vma = find_vma(mm, addr);
  if (TASK_SIZE - len >= addr &&
      (!vma || addr + len <= vma->vm_start))
   return addr;
 }
 if (len > mm->cached_hole_size) {
         start_addr = addr = mm->free_area_cache;
 } else {
         start_addr = addr = TASK_UNMAPPED_BASE;
         mm->cached_hole_size = 0;
 }

full_search:
 if (0)
  addr = COLOUR_ALIGN(addr, pgoff);
 else
  addr = PAGE_ALIGN(addr);

 for (vma = find_vma(mm, addr); ; vma = vma->vm_next) {

  if (TASK_SIZE - len < addr) {




   if (start_addr != TASK_UNMAPPED_BASE) {
    start_addr = addr = TASK_UNMAPPED_BASE;
    mm->cached_hole_size = 0;
    goto full_search;
   }
   return -ENOMEM;
  }
  if (!vma || addr + len <= vma->vm_start) {



   mm->free_area_cache = addr + len;
   return addr;
  }
  if (addr + mm->cached_hole_size < vma->vm_start)
          mm->cached_hole_size = vma->vm_start - addr;
  addr = vma->vm_end;
  if (0)
   addr = COLOUR_ALIGN(addr, pgoff);
 }
}
