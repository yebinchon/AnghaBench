
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* eoi ) (unsigned int) ;} ;


 int cpm2_get_irq () ;
 int generic_handle_irq (int) ;
 int stub1 (unsigned int) ;

__attribute__((used)) static void cpm2_cascade(unsigned int irq, struct irq_desc *desc)
{
 int cascade_irq;

 while ((cascade_irq = cpm2_get_irq()) >= 0)
  generic_handle_irq(cascade_irq);

 desc->chip->eoi(irq);
}
