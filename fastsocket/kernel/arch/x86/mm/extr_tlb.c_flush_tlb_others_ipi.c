
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union smp_flush_state {unsigned long flush_va; int tlbstate_lock; struct mm_struct* flush_mm; int flush_cpumask; } ;
struct mm_struct {int dummy; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int (* send_IPI_mask ) (int ,scalar_t__) ;} ;


 scalar_t__ INVALIDATE_TLB_VECTOR_START ;
 unsigned int NUM_INVALIDATE_TLB_VECTORS ;
 TYPE_1__* apic ;
 int cpu_relax () ;
 scalar_t__ cpumask_andnot (int ,struct cpumask const*,int ) ;
 int cpumask_empty (int ) ;
 int cpumask_of (unsigned int) ;
 union smp_flush_state* flush_state ;
 unsigned int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ,scalar_t__) ;
 int to_cpumask (int ) ;

__attribute__((used)) static void flush_tlb_others_ipi(const struct cpumask *cpumask,
     struct mm_struct *mm, unsigned long va)
{
 unsigned int sender;
 union smp_flush_state *f;


 sender = smp_processor_id() % NUM_INVALIDATE_TLB_VECTORS;
 f = &flush_state[sender];






 spin_lock(&f->tlbstate_lock);

 f->flush_mm = mm;
 f->flush_va = va;
 if (cpumask_andnot(to_cpumask(f->flush_cpumask), cpumask, cpumask_of(smp_processor_id()))) {




  apic->send_IPI_mask(to_cpumask(f->flush_cpumask),
         INVALIDATE_TLB_VECTOR_START + sender);

  while (!cpumask_empty(to_cpumask(f->flush_cpumask)))
   cpu_relax();
 }

 f->flush_mm = ((void*)0);
 f->flush_va = 0;
 spin_unlock(&f->tlbstate_lock);
}
