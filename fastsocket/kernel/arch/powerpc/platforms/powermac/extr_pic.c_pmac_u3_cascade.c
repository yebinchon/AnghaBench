
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpic {int dummy; } ;
struct irq_desc {TYPE_1__* chip; struct mpic* handler_data; } ;
struct TYPE_2__ {int (* eoi ) (unsigned int) ;} ;


 unsigned int NO_IRQ ;
 int generic_handle_irq (unsigned int) ;
 unsigned int mpic_get_one_irq (struct mpic*) ;
 int stub1 (unsigned int) ;

__attribute__((used)) static void pmac_u3_cascade(unsigned int irq, struct irq_desc *desc)
{
 struct mpic *mpic = desc->handler_data;

 unsigned int cascade_irq = mpic_get_one_irq(mpic);
 if (cascade_irq != NO_IRQ)
  generic_handle_irq(cascade_irq);
 desc->chip->eoi(irq);
}
