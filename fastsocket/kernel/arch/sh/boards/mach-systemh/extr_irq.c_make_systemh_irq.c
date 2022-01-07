
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_irq_nosync (unsigned int) ;
 int disable_systemh_irq (unsigned int) ;
 int handle_level_irq ;
 int set_irq_chip_and_handler (unsigned int,int *,int ) ;
 int systemh_irq_type ;

void make_systemh_irq(unsigned int irq)
{
 disable_irq_nosync(irq);
 set_irq_chip_and_handler(irq, &systemh_irq_type, handle_level_irq);
 disable_systemh_irq(irq);
}
