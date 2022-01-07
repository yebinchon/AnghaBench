
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int unmap_area; int get_unmapped_area; int mmap_base; } ;


 int TASK_UNMAPPED_BASE ;
 int arch_get_unmapped_area ;
 int arch_get_unmapped_area_topdown ;
 int arch_unmap_area ;
 int arch_unmap_area_topdown ;
 int mmap_base () ;
 scalar_t__ mmap_is_legacy () ;

void arch_pick_mmap_layout(struct mm_struct *mm)
{




 if (mmap_is_legacy()) {
  mm->mmap_base = TASK_UNMAPPED_BASE;
  mm->get_unmapped_area = arch_get_unmapped_area;
  mm->unmap_area = arch_unmap_area;
 } else {
  mm->mmap_base = mmap_base();
  mm->get_unmapped_area = arch_get_unmapped_area_topdown;
  mm->unmap_area = arch_unmap_area_topdown;
 }
}
