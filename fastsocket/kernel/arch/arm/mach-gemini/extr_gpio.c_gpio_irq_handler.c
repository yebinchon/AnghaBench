
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct TYPE_3__ {int (* handle_irq ) (unsigned int,TYPE_1__*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ GPIO_BASE (unsigned int) ;
 scalar_t__ GPIO_INT_STAT ;
 unsigned int GPIO_IRQ_BASE ;
 unsigned int __raw_readl (scalar_t__) ;
 scalar_t__ get_irq_data (unsigned int) ;
 TYPE_1__* irq_desc ;
 int stub1 (unsigned int,TYPE_1__*) ;

__attribute__((used)) static void gpio_irq_handler(unsigned int irq, struct irq_desc *desc)
{
 unsigned int gpio_irq_no, irq_stat;
 unsigned int port = (unsigned int)get_irq_data(irq);

 irq_stat = __raw_readl(GPIO_BASE(port) + GPIO_INT_STAT);

 gpio_irq_no = GPIO_IRQ_BASE + port * 32;
 for (; irq_stat != 0; irq_stat >>= 1, gpio_irq_no++) {

  if ((irq_stat & 1) == 0)
   continue;

  BUG_ON(!(irq_desc[gpio_irq_no].handle_irq));
  irq_desc[gpio_irq_no].handle_irq(gpio_irq_no,
    &irq_desc[gpio_irq_no]);
 }
}
