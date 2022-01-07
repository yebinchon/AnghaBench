
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ack_APIC_irq () ;
 int pr_err (char*,unsigned int) ;
 scalar_t__ printk_ratelimit () ;

void ack_bad_irq(unsigned int irq)
{
 if (printk_ratelimit())
  pr_err("unexpected IRQ trap at vector %02x\n", irq);
 ack_APIC_irq();
}
