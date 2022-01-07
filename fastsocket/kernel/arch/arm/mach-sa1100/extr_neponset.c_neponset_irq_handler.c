
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* unmask ) (unsigned int) ;int (* ack ) (unsigned int) ;int (* mask ) (unsigned int) ;} ;


 int IRQ_NEPONSET_SA1111 ;
 int IRQ_NEPONSET_SMC9196 ;
 int IRQ_NEPONSET_USAR ;
 unsigned int IRR ;
 unsigned int IRR_ETHERNET ;
 unsigned int IRR_SA1111 ;
 unsigned int IRR_USAR ;
 int generic_handle_irq (int ) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;
 int stub3 (unsigned int) ;
 int stub4 (unsigned int) ;

__attribute__((used)) static void
neponset_irq_handler(unsigned int irq, struct irq_desc *desc)
{
 unsigned int irr;

 while (1) {



  desc->chip->ack(irq);






  irr = IRR ^ (IRR_ETHERNET | IRR_USAR);

  if ((irr & (IRR_ETHERNET | IRR_USAR | IRR_SA1111)) == 0)
   break;






  if (irr & (IRR_ETHERNET | IRR_USAR)) {
   desc->chip->mask(irq);







   desc->chip->ack(irq);

   if (irr & IRR_ETHERNET) {
    generic_handle_irq(IRQ_NEPONSET_SMC9196);
   }

   if (irr & IRR_USAR) {
    generic_handle_irq(IRQ_NEPONSET_USAR);
   }

   desc->chip->unmask(irq);
  }

  if (irr & IRR_SA1111) {
   generic_handle_irq(IRQ_NEPONSET_SA1111);
  }
 }
}
