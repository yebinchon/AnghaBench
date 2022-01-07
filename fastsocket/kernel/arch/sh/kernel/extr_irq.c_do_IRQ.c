
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int preempt_count; int previous_sp; int task; } ;
union irq_ctx {TYPE_1__ tinfo; } ;
typedef int u32 ;
struct pt_regs {int dummy; } ;


 int SOFTIRQ_MASK ;
 int current_stack_pointer ;
 scalar_t__ current_thread_info () ;
 int generic_handle_irq (unsigned int) ;
 union irq_ctx** hardirq_ctx ;
 unsigned int irq_demux (unsigned int) ;
 int irq_enter () ;
 int irq_exit () ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 size_t smp_processor_id () ;

int do_IRQ(unsigned int irq, struct pt_regs *regs)
{
 struct pt_regs *old_regs = set_irq_regs(regs);




 irq_enter();
 irq = irq_demux(irq);
  generic_handle_irq(irq);

 irq_exit();

 set_irq_regs(old_regs);
 return 1;
}
