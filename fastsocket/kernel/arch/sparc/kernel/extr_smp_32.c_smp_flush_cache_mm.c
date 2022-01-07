
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {scalar_t__ context; } ;
typedef int smpfunc_t ;
typedef int cpumask_t ;


 scalar_t__ BTFIXUP_CALL (int (*) (struct mm_struct*)) ;
 scalar_t__ NO_CONTEXT ;
 int cpu_clear (int ,int ) ;
 int cpus_empty (int ) ;
 int local_flush_cache_mm (struct mm_struct*) ;
 int * mm_cpumask (struct mm_struct*) ;
 int smp_processor_id () ;
 int xc1 (int ,unsigned long) ;

void smp_flush_cache_mm(struct mm_struct *mm)
{
 if(mm->context != NO_CONTEXT) {
  cpumask_t cpu_mask = *mm_cpumask(mm);
  cpu_clear(smp_processor_id(), cpu_mask);
  if (!cpus_empty(cpu_mask))
   xc1((smpfunc_t) BTFIXUP_CALL(local_flush_cache_mm), (unsigned long) mm);
  local_flush_cache_mm(mm);
 }
}
