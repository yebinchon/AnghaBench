
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {scalar_t__ context; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int __get_new_mmu_context (struct mm_struct*) ;
 int __load_mmu_context (struct mm_struct*) ;
 TYPE_1__* current ;
 int local_irq_restore (int) ;
 int local_save_flags (int) ;

void flush_tlb_mm(struct mm_struct *mm)
{
 if (mm == current->active_mm) {
  int flags;
  local_save_flags(flags);
  __get_new_mmu_context(mm);
  __load_mmu_context(mm);
  local_irq_restore(flags);
 }
 else
  mm->context = 0;
}
