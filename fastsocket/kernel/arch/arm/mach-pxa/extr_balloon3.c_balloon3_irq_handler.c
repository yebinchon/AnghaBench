
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* ack ) (int ) ;} ;


 int BALLOON3_AUX_NIRQ ;
 int BALLOON3_INT_CONTROL_REG ;
 unsigned int BALLOON3_IRQ (int ) ;
 unsigned int __ffs (unsigned long) ;
 unsigned long __raw_readl (int ) ;
 unsigned long balloon3_irq_enabled ;
 int generic_handle_irq (unsigned int) ;
 int stub1 (int ) ;

__attribute__((used)) static void balloon3_irq_handler(unsigned int irq, struct irq_desc *desc)
{
 unsigned long pending = __raw_readl(BALLOON3_INT_CONTROL_REG) &
     balloon3_irq_enabled;

 do {

  if (desc->chip->ack)
   desc->chip->ack(BALLOON3_AUX_NIRQ);
  while (pending) {
   irq = BALLOON3_IRQ(0) + __ffs(pending);
   generic_handle_irq(irq);
   pending &= pending - 1;
  }
  pending = __raw_readl(BALLOON3_INT_CONTROL_REG) &
    balloon3_irq_enabled;
 } while (pending);
}
