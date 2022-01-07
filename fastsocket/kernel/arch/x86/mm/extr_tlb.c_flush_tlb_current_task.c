
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int TLB_FLUSH_ALL ;
 scalar_t__ cpumask_any_but (int ,int ) ;
 TYPE_1__* current ;
 int flush_tlb_others (int ,struct mm_struct*,int ) ;
 int local_flush_tlb () ;
 int mm_cpumask (struct mm_struct*) ;
 scalar_t__ nr_cpu_ids ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_processor_id () ;

void flush_tlb_current_task(void)
{
 struct mm_struct *mm = current->mm;

 preempt_disable();

 local_flush_tlb();
 if (cpumask_any_but(mm_cpumask(mm), smp_processor_id()) < nr_cpu_ids)
  flush_tlb_others(mm_cpumask(mm), mm, TLB_FLUSH_ALL);
 preempt_enable();
}
