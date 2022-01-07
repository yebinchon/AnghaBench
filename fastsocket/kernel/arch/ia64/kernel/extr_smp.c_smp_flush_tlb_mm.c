
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int mm_users; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int atomic_read (int *) ;
 TYPE_1__* current ;
 scalar_t__ likely (int) ;
 int local_finish_flush_tlb_mm (struct mm_struct*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int mm_cpumask (struct mm_struct*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function_many (int ,void (*) (void*),struct mm_struct*,int) ;

void
smp_flush_tlb_mm (struct mm_struct *mm)
{
 preempt_disable();

 if (likely(mm == current->active_mm && atomic_read(&mm->mm_users) == 1))
 {
  local_finish_flush_tlb_mm(mm);
  preempt_enable();
  return;
 }

 smp_call_function_many(mm_cpumask(mm),
  (void (*)(void *))local_finish_flush_tlb_mm, mm, 1);
 local_irq_disable();
 local_finish_flush_tlb_mm(mm);
 local_irq_enable();
 preempt_enable();
}
