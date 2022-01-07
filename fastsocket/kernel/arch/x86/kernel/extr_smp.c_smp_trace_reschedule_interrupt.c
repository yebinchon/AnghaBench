
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int RESCHEDULE_VECTOR ;
 int __smp_reschedule_interrupt () ;
 int exiting_irq () ;
 int smp_entering_irq () ;
 int trace_reschedule_entry (int ) ;
 int trace_reschedule_exit (int ) ;

void smp_trace_reschedule_interrupt(struct pt_regs *regs)
{






 smp_entering_irq();
 trace_reschedule_entry(RESCHEDULE_VECTOR);
 __smp_reschedule_interrupt();
 trace_reschedule_exit(RESCHEDULE_VECTOR);
 exiting_irq();



}
