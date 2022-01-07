
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SGI_BUSERR_IRQ ;
 int ip22_be_interrupt (int) ;
 int irq_enter () ;
 int irq_exit () ;
 int irq_to_desc (int) ;
 int kstat_incr_irqs_this_cpu (int,int ) ;

__attribute__((used)) static void indy_buserror_irq(void)
{
 int irq = SGI_BUSERR_IRQ;

 irq_enter();
 kstat_incr_irqs_this_cpu(irq, irq_to_desc(irq));
 ip22_be_interrupt(irq);
 irq_exit();
}
