
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {unsigned long* context; } ;
typedef int cpumask_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int FLUSH_ALL ;
 unsigned long NO_CONTEXT ;
 int activate_context (struct mm_struct*) ;
 int cpu_clear (int,int ) ;
 int cpumask_clear_cpu (int,int *) ;
 int cpus_empty (int ) ;
 TYPE_1__* current ;
 int flush_tlb_others (int ,struct mm_struct*,int *,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int * mm_cpumask (struct mm_struct*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_processor_id () ;

void smp_flush_tlb_mm(struct mm_struct *mm)
{
 int cpu_id;
 cpumask_t cpu_mask;
 unsigned long *mmc;
 unsigned long flags;

 preempt_disable();
 cpu_id = smp_processor_id();
 mmc = &mm->context[cpu_id];
 cpu_mask = *mm_cpumask(mm);
 cpu_clear(cpu_id, cpu_mask);

 if (*mmc != NO_CONTEXT) {
  local_irq_save(flags);
  *mmc = NO_CONTEXT;
  if (mm == current->mm)
   activate_context(mm);
  else
   cpumask_clear_cpu(cpu_id, mm_cpumask(mm));
  local_irq_restore(flags);
 }
 if (!cpus_empty(cpu_mask))
  flush_tlb_others(cpu_mask, mm, ((void*)0), FLUSH_ALL);

 preempt_enable();
}
