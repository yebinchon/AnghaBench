
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int id; } ;
struct mm_struct {TYPE_1__ context; } ;


 unsigned int ASID_FIRST_VERSION ;
 unsigned int ASID_MASK ;
 int __flush_icache_all () ;
 int cpu_asid_lock ;
 unsigned int cpu_last_asid ;
 int cpumask_copy (int ,int ) ;
 int cpumask_of (int ) ;
 int dsb () ;
 int flush_tlb_all () ;
 scalar_t__ icache_is_vivt_asid_tagged () ;
 int isb () ;
 int mm_cpumask (struct mm_struct*) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void __new_context(struct mm_struct *mm)
{
 unsigned int asid;

 spin_lock(&cpu_asid_lock);
 asid = ++cpu_last_asid;
 if (asid == 0)
  asid = cpu_last_asid = ASID_FIRST_VERSION;





 if (unlikely((asid & ~ASID_MASK) == 0)) {
  asid = ++cpu_last_asid;

  asm("mcr	p15, 0, %0, c13, c0, 1	@ set reserved context ID\n"
      :
      : "r" (0));
  isb();
  flush_tlb_all();
  if (icache_is_vivt_asid_tagged()) {
   __flush_icache_all();
   dsb();
  }
 }
 spin_unlock(&cpu_asid_lock);

 cpumask_copy(mm_cpumask(mm), cpumask_of(smp_processor_id()));
 mm->context.id = asid;
}
