
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union smp_flush_state {scalar_t__ flush_mm; scalar_t__ flush_va; int flush_cpumask; } ;
struct pt_regs {unsigned int orig_ax; } ;
struct TYPE_4__ {int state; int active_mm; } ;
struct TYPE_3__ {scalar_t__ active_mm; } ;


 unsigned int INVALIDATE_TLB_VECTOR_START ;
 scalar_t__ TLBSTATE_OK ;
 scalar_t__ TLB_FLUSH_ALL ;
 int __flush_tlb_one (scalar_t__) ;
 int ack_APIC_irq () ;
 TYPE_2__ cpu_tlbstate ;
 int cpumask_clear_cpu (unsigned int,int ) ;
 int cpumask_test_cpu (unsigned int,int ) ;
 TYPE_1__* current ;
 union smp_flush_state* flush_state ;
 int inc_irq_stat (int ) ;
 int irq_tlb_count ;
 int leave_mm (unsigned int) ;
 int load_user_cs_desc (unsigned int,scalar_t__) ;
 int local_flush_tlb () ;
 scalar_t__ percpu_read (int ) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;
 unsigned int smp_processor_id () ;
 int to_cpumask (int ) ;

void smp_invalidate_interrupt(struct pt_regs *regs)
{
 unsigned int cpu;
 unsigned int sender;
 union smp_flush_state *f;

 cpu = smp_processor_id();
 sender = ~regs->orig_ax - INVALIDATE_TLB_VECTOR_START;
 f = &flush_state[sender];

 if (!cpumask_test_cpu(cpu, to_cpumask(f->flush_cpumask)))
  goto out;
 if (f->flush_mm == percpu_read(cpu_tlbstate.active_mm)) {
  if (percpu_read(cpu_tlbstate.state) == TLBSTATE_OK) {
   if (f->flush_va == TLB_FLUSH_ALL)
    local_flush_tlb();
   else
    __flush_tlb_one(f->flush_va);
  } else
   leave_mm(cpu);
 }
out:
 ack_APIC_irq();
 smp_mb__before_clear_bit();
 cpumask_clear_cpu(cpu, to_cpumask(f->flush_cpumask));
 smp_mb__after_clear_bit();
 inc_irq_stat(irq_tlb_count);
}
