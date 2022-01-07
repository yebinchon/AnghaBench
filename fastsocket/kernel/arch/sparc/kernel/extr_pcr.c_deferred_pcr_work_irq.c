
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int PIL_DEFERRED_PCR_WORK ;
 int clear_softint (int) ;
 int irq_enter () ;
 int irq_exit () ;
 int perf_event_do_pending () ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;

void deferred_pcr_work_irq(int irq, struct pt_regs *regs)
{
 struct pt_regs *old_regs;

 clear_softint(1 << PIL_DEFERRED_PCR_WORK);

 old_regs = set_irq_regs(regs);
 irq_enter();



 irq_exit();
 set_irq_regs(old_regs);
}
