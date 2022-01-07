
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int parport_generic_irq (struct parport*) ;

irqreturn_t parport_irq_handler(int irq, void *dev_id)
{
 struct parport *port = dev_id;

 parport_generic_irq(port);

 return IRQ_HANDLED;
}
