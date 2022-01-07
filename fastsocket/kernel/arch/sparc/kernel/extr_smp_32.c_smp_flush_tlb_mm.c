
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {scalar_t__ context; int mm_users; } ;
typedef int smpfunc_t ;
typedef int cpumask_t ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 scalar_t__ BTFIXUP_CALL (int (*) (struct mm_struct*)) ;
 scalar_t__ NO_CONTEXT ;
 int atomic_read (int *) ;
 int cpu_clear (int ,int ) ;
 int cpumask_copy (int *,int ) ;
 int cpumask_of (int ) ;
 int cpus_empty (int ) ;
 TYPE_1__* current ;
 int local_flush_tlb_mm (struct mm_struct*) ;
 int * mm_cpumask (struct mm_struct*) ;
 int smp_processor_id () ;
 int xc1 (int ,unsigned long) ;

void smp_flush_tlb_mm(struct mm_struct *mm)
{
 if(mm->context != NO_CONTEXT) {
  cpumask_t cpu_mask = *mm_cpumask(mm);
  cpu_clear(smp_processor_id(), cpu_mask);
  if (!cpus_empty(cpu_mask)) {
   xc1((smpfunc_t) BTFIXUP_CALL(local_flush_tlb_mm), (unsigned long) mm);
   if(atomic_read(&mm->mm_users) == 1 && current->active_mm == mm)
    cpumask_copy(mm_cpumask(mm),
          cpumask_of(smp_processor_id()));
  }
  local_flush_tlb_mm(mm);
 }
}
