
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int EP93XX_GPIO_A_INT_STATUS ;
 int EP93XX_GPIO_B_INT_STATUS ;
 int EP93XX_GPIO_LINE_A (int ) ;
 int EP93XX_GPIO_LINE_B (int ) ;
 unsigned char __raw_readb (int ) ;
 int generic_handle_irq (int) ;
 int gpio_to_irq (int ) ;

__attribute__((used)) static void ep93xx_gpio_ab_irq_handler(unsigned int irq, struct irq_desc *desc)
{
 unsigned char status;
 int i;

 status = __raw_readb(EP93XX_GPIO_A_INT_STATUS);
 for (i = 0; i < 8; i++) {
  if (status & (1 << i)) {
   int gpio_irq = gpio_to_irq(EP93XX_GPIO_LINE_A(0)) + i;
   generic_handle_irq(gpio_irq);
  }
 }

 status = __raw_readb(EP93XX_GPIO_B_INT_STATUS);
 for (i = 0; i < 8; i++) {
  if (status & (1 << i)) {
   int gpio_irq = gpio_to_irq(EP93XX_GPIO_LINE_B(0)) + i;
   generic_handle_irq(gpio_irq);
  }
 }
}
