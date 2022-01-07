
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {scalar_t__ context; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 scalar_t__ NO_CONTEXT ;
 int activate_context (struct mm_struct*) ;
 TYPE_1__* current ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void flush_tlb_mm(struct mm_struct *mm)
{

 if (mm->context != NO_CONTEXT) {
  unsigned long flags;

  local_irq_save(flags);
  mm->context = NO_CONTEXT;
  if (mm == current->mm)
   activate_context(mm);
  local_irq_restore(flags);
 }
}
