
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* eoi ) (unsigned int) ;} ;


 unsigned int NO_IRQ ;
 int generic_handle_irq (unsigned int) ;
 unsigned int socrates_fpga_pic_get_irq (unsigned int) ;
 int stub1 (unsigned int) ;

void socrates_fpga_pic_cascade(unsigned int irq, struct irq_desc *desc)
{
 unsigned int cascade_irq;





 cascade_irq = socrates_fpga_pic_get_irq(irq);

 if (cascade_irq != NO_IRQ)
  generic_handle_irq(cascade_irq);
 desc->chip->eoi(irq);

}
