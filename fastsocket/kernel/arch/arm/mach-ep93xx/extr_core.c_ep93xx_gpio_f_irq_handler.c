
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int EP93XX_GPIO_LINE_F (int ) ;
 int generic_handle_irq (int) ;
 int gpio_to_irq (int ) ;

__attribute__((used)) static void ep93xx_gpio_f_irq_handler(unsigned int irq, struct irq_desc *desc)
{





 int port_f_idx = ((irq + 1) & 7) ^ 4;
 int gpio_irq = gpio_to_irq(EP93XX_GPIO_LINE_F(0)) + port_f_idx;

 generic_handle_irq(gpio_irq);
}
