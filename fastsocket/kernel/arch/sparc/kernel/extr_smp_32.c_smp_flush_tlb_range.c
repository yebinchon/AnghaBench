
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {scalar_t__ context; } ;
typedef int smpfunc_t ;
typedef int cpumask_t ;


 scalar_t__ BTFIXUP_CALL (int (*) (struct vm_area_struct*,unsigned long,unsigned long)) ;
 scalar_t__ NO_CONTEXT ;
 int cpu_clear (int ,int ) ;
 int cpus_empty (int ) ;
 int local_flush_tlb_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int * mm_cpumask (struct mm_struct*) ;
 int smp_processor_id () ;
 int xc3 (int ,unsigned long,unsigned long,unsigned long) ;

void smp_flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
    unsigned long end)
{
 struct mm_struct *mm = vma->vm_mm;

 if (mm->context != NO_CONTEXT) {
  cpumask_t cpu_mask = *mm_cpumask(mm);
  cpu_clear(smp_processor_id(), cpu_mask);
  if (!cpus_empty(cpu_mask))
   xc3((smpfunc_t) BTFIXUP_CALL(local_flush_tlb_range), (unsigned long) vma, start, end);
  local_flush_tlb_range(vma, start, end);
 }
}
