
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct mm_struct {unsigned long cached_hole_size; unsigned long free_area_cache; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long ENOMEM ;
 unsigned long MAP_32BIT ;
 unsigned long MAP_FIXED ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int TIF_IA32 ;
 unsigned long align_addr (unsigned long,struct file*,int ) ;
 TYPE_1__* current ;
 int find_start_end (unsigned long,unsigned long*,unsigned long*) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 scalar_t__ likely (int) ;
 unsigned long mmap_min_addr ;
 unsigned int sysctl_unmap_area_factor ;
 scalar_t__ test_thread_flag (int ) ;

unsigned long
arch_get_unmapped_area(struct file *filp, unsigned long addr,
  unsigned long len, unsigned long pgoff, unsigned long flags)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 unsigned long start_addr;
 unsigned long begin, end;
 unsigned int unmap_factor = sysctl_unmap_area_factor;

 if (flags & MAP_FIXED)
  return addr;

 find_start_end(flags, &begin, &end);

 if (len > end)
  return -ENOMEM;

 if (addr) {
  addr = PAGE_ALIGN(addr);
  vma = find_vma(mm, addr);
  if (end - len >= addr &&
      (!vma || addr + len <= vma->vm_start) &&
      (addr >= mmap_min_addr))
   return addr;
 }
 if (((flags & MAP_32BIT) || test_thread_flag(TIF_IA32))) {
  if (!unmap_factor && len <= mm->cached_hole_size)
   mm->cached_hole_size = 0;
  mm->free_area_cache = begin;
 }
 addr = mm->free_area_cache;
 if (addr < begin)
  addr = begin;
 start_addr = addr;

full_search:

 addr = align_addr(addr, filp, 0);

 for (vma = find_vma(mm, addr); ; vma = vma->vm_next) {

  if (end - len < addr) {




   if (start_addr != begin) {
    start_addr = addr = begin;
    if (likely(!unmap_factor))
     mm->cached_hole_size = 0;
    goto full_search;
   }
   return -ENOMEM;
  }
  if (!vma || addr + len <= vma->vm_start) {



   mm->free_area_cache = addr + len;
   return addr;
  }
  if (!unmap_factor &&
    addr + mm->cached_hole_size < vma->vm_start)
   mm->cached_hole_size = vma->vm_start - addr;

  addr = vma->vm_end;
  addr = align_addr(addr, filp, 0);
 }
}
