
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 TYPE_1__* current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int flush_cache_user_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int up_read (int *) ;

__attribute__((used)) static inline void
do_cache_op(unsigned long start, unsigned long end, int flags)
{
 struct mm_struct *mm = current->active_mm;
 struct vm_area_struct *vma;

 if (end < start || flags)
  return;

 down_read(&mm->mmap_sem);
 vma = find_vma(mm, start);
 if (vma && vma->vm_start < end) {
  if (start < vma->vm_start)
   start = vma->vm_start;
  if (end > vma->vm_end)
   end = vma->vm_end;

  flush_cache_user_range(vma, start, end);
 }
 up_read(&mm->mmap_sem);
}
