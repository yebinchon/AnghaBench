
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int base; } ;
struct nmk_gpio_chip {scalar_t__ addr; TYPE_1__ chip; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int (* ack ) (unsigned int) ;} ;


 scalar_t__ NMK_GPIO_IS ;
 unsigned int NOMADIK_GPIO_TO_IRQ (int ) ;
 unsigned int __ffs (int ) ;
 int generic_handle_irq (unsigned int) ;
 struct irq_chip* get_irq_chip (unsigned int) ;
 struct nmk_gpio_chip* get_irq_data (unsigned int) ;
 int readl (scalar_t__) ;
 int stub1 (unsigned int) ;

__attribute__((used)) static void nmk_gpio_irq_handler(unsigned int irq, struct irq_desc *desc)
{
 struct nmk_gpio_chip *nmk_chip;
 struct irq_chip *host_chip;
 unsigned int gpio_irq;
 u32 pending;
 unsigned int first_irq;

 nmk_chip = get_irq_data(irq);
 first_irq = NOMADIK_GPIO_TO_IRQ(nmk_chip->chip.base);
 while ( (pending = readl(nmk_chip->addr + NMK_GPIO_IS)) ) {
  gpio_irq = first_irq + __ffs(pending);
  generic_handle_irq(gpio_irq);
 }
 if (0) {
  host_chip = get_irq_chip(irq);
  host_chip->ack(irq);
 }
}
