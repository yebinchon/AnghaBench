
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int K_INT_MBOX_0 ;
 unsigned int SMP_CALL_FUNCTION ;
 int ____raw_readq (int ) ;
 int ____raw_writeq (int,int ) ;
 int irq_to_desc (int) ;
 int kstat_incr_irqs_this_cpu (int,int ) ;
 int * mailbox_clear_regs ;
 int * mailbox_regs ;
 int smp_call_function_interrupt () ;
 int smp_processor_id () ;

void sb1250_mailbox_interrupt(void)
{
 int cpu = smp_processor_id();
 int irq = K_INT_MBOX_0;
 unsigned int action;

 kstat_incr_irqs_this_cpu(irq, irq_to_desc(irq));

 action = (____raw_readq(mailbox_regs[cpu]) >> 48) & 0xffff;


 ____raw_writeq(((u64)action) << 48, mailbox_clear_regs[cpu]);






 if (action & SMP_CALL_FUNCTION)
  smp_call_function_interrupt();
}
