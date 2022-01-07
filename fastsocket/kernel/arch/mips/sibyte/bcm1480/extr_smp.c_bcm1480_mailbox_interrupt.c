
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int K_BCM1480_INT_MBOX_0_0 ;
 unsigned int SMP_CALL_FUNCTION ;
 int __raw_readq (int ) ;
 int __raw_writeq (int,int ) ;
 int irq_to_desc (int) ;
 int kstat_incr_irqs_this_cpu (int,int ) ;
 int * mailbox_0_clear_regs ;
 int * mailbox_0_regs ;
 int smp_call_function_interrupt () ;
 int smp_processor_id () ;

void bcm1480_mailbox_interrupt(void)
{
 int cpu = smp_processor_id();
 int irq = K_BCM1480_INT_MBOX_0_0;
 unsigned int action;

 kstat_incr_irqs_this_cpu(irq, irq_to_desc(irq));

 action = (__raw_readq(mailbox_0_regs[cpu]) >> 48) & 0xffff;


 __raw_writeq(((u64)action)<<48, mailbox_0_clear_regs[cpu]);






 if (action & SMP_CALL_FUNCTION)
  smp_call_function_interrupt();
}
