
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct mm_struct {unsigned long free_area_cache; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 unsigned long MAP_SHARED ;
 int PAGE_SIZE ;
 scalar_t__ REGION_NUMBER (unsigned long) ;
 unsigned long REGION_OFFSET (unsigned long) ;
 scalar_t__ RGN_HPAGE ;
 unsigned long RGN_MAP_LIMIT ;
 int SHMLBA ;
 int TASK_SIZE ;
 unsigned long TASK_UNMAPPED_BASE ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 scalar_t__ is_hugepage_only_range (struct mm_struct*,unsigned long,unsigned long) ;

unsigned long
arch_get_unmapped_area (struct file *filp, unsigned long addr, unsigned long len,
   unsigned long pgoff, unsigned long flags)
{
 long map_shared = (flags & MAP_SHARED);
 unsigned long start_addr, align_mask = PAGE_SIZE - 1;
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;

 if (len > RGN_MAP_LIMIT)
  return -ENOMEM;


 if (flags & MAP_FIXED) {
  if (is_hugepage_only_range(mm, addr, len))
   return -EINVAL;
  return addr;
 }





 if (!addr)
  addr = mm->free_area_cache;

 if (map_shared && (TASK_SIZE > 0xfffffffful))






  align_mask = SHMLBA - 1;

  full_search:
 start_addr = addr = (addr + align_mask) & ~align_mask;

 for (vma = find_vma(mm, addr); ; vma = vma->vm_next) {

  if (TASK_SIZE - len < addr || RGN_MAP_LIMIT - len < REGION_OFFSET(addr)) {
   if (start_addr != TASK_UNMAPPED_BASE) {

    addr = TASK_UNMAPPED_BASE;
    goto full_search;
   }
   return -ENOMEM;
  }
  if (!vma || addr + len <= vma->vm_start) {

   mm->free_area_cache = addr + len;
   return addr;
  }
  addr = (vma->vm_end + align_mask) & ~align_mask;
 }
}
