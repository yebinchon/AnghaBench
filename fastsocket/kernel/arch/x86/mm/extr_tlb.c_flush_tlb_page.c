
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ mm; struct mm_struct* active_mm; } ;


 int __flush_tlb_one (unsigned long) ;
 scalar_t__ cpumask_any_but (int ,int ) ;
 TYPE_1__* current ;
 int flush_tlb_others (int ,struct mm_struct*,unsigned long) ;
 int leave_mm (int ) ;
 int mm_cpumask (struct mm_struct*) ;
 scalar_t__ nr_cpu_ids ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_processor_id () ;

void flush_tlb_page(struct vm_area_struct *vma, unsigned long va)
{
 struct mm_struct *mm = vma->vm_mm;

 preempt_disable();

 if (current->active_mm == mm) {
  if (current->mm)
   __flush_tlb_one(va);
  else
   leave_mm(smp_processor_id());
 }

 if (cpumask_any_but(mm_cpumask(mm), smp_processor_id()) < nr_cpu_ids)
  flush_tlb_others(mm_cpumask(mm), mm, va);

 preempt_enable();
}
