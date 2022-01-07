
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {scalar_t__ context; } ;


 int drop_mmu_context (struct mm_struct*) ;

void local_flush_tlb_mm(struct mm_struct *mm)
{
 if (mm->context != 0)
  drop_mmu_context(mm);
}
