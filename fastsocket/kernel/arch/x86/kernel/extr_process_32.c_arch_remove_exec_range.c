
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct TYPE_2__ {unsigned long exec_limit; } ;
struct mm_struct {struct vm_area_struct* mmap; TYPE_1__ context; } ;


 unsigned long PAGE_SIZE ;
 int VM_EXEC ;
 int modify_cs (struct mm_struct*,unsigned long) ;

void arch_remove_exec_range(struct mm_struct *mm, unsigned long old_end)
{
 struct vm_area_struct *vma;
 unsigned long limit = PAGE_SIZE;

 if (old_end == mm->context.exec_limit) {
  for (vma = mm->mmap; vma; vma = vma->vm_next)
   if ((vma->vm_flags & VM_EXEC) && (vma->vm_end > limit))
    limit = vma->vm_end;
  modify_cs(mm, limit);
 }
}
