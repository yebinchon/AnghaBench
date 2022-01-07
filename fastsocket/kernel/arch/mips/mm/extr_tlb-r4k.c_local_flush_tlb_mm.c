
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 scalar_t__ cpu_context (int,struct mm_struct*) ;
 int drop_mmu_context (struct mm_struct*,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_processor_id () ;

void local_flush_tlb_mm(struct mm_struct *mm)
{
 int cpu;

 preempt_disable();

 cpu = smp_processor_id();

 if (cpu_context(cpu, mm) != 0) {
  drop_mmu_context(mm, cpu);
 }

 preempt_enable();
}
