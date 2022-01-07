
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __smp_reschedule_interrupt () ;
 int ack_APIC_irq () ;

void smp_reschedule_interrupt(struct pt_regs *regs)
{
 ack_APIC_irq();
 __smp_reschedule_interrupt();



}
