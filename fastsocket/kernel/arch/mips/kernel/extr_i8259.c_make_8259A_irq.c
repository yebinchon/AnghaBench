
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_irq_nosync (unsigned int) ;
 int enable_irq (unsigned int) ;
 int handle_level_irq ;
 int i8259A_chip ;
 int set_irq_chip_and_handler (unsigned int,int *,int ) ;

void make_8259A_irq(unsigned int irq)
{
 disable_irq_nosync(irq);
 set_irq_chip_and_handler(irq, &i8259A_chip, handle_level_irq);
 enable_irq(irq);
}
