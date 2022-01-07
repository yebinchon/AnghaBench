
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {unsigned long* context; } ;
typedef int cpumask_t ;


 int BUG () ;
 unsigned long MMU_CONTEXT_ASID_MASK ;
 unsigned long NO_CONTEXT ;
 unsigned long PAGE_MASK ;
 int __flush_tlb_page (unsigned long) ;
 int cpu_clear (int,int ) ;
 int cpus_empty (int ) ;
 int flush_tlb_others (int ,struct mm_struct*,struct vm_area_struct*,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int * mm_cpumask (struct mm_struct*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_processor_id () ;

void smp_flush_tlb_page(struct vm_area_struct *vma, unsigned long va)
{
 struct mm_struct *mm = vma->vm_mm;
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
  va &= PAGE_MASK;
  va |= (*mmc & MMU_CONTEXT_ASID_MASK);
  __flush_tlb_page(va);
  local_irq_restore(flags);
 }
 if (!cpus_empty(cpu_mask))
  flush_tlb_others(cpu_mask, mm, vma, va);

 preempt_enable();
}
