
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IMASK_PRIORITY ;
 int clear_bit (unsigned int,int ) ;
 int imask_mask ;
 unsigned int interrupt_priority ;
 int set_interrupt_registers (unsigned int) ;

__attribute__((used)) static void mask_imask_irq(unsigned int irq)
{
 clear_bit(irq, imask_mask);
 if (interrupt_priority < IMASK_PRIORITY - irq)
  interrupt_priority = IMASK_PRIORITY - irq;
 set_interrupt_registers(interrupt_priority);
}
