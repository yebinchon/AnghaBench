
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct vm_area_struct* vm_next; int vm_end; int vm_start; } ;
struct mm_struct {struct vm_area_struct* mmap; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 TYPE_1__* current ;
 int fix_range (struct mm_struct*,int ,int ,int) ;

void force_flush_all(void)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma = mm->mmap;

 while (vma != ((void*)0)) {
  fix_range(mm, vma->vm_start, vma->vm_end, 1);
  vma = vma->vm_next;
 }
}
