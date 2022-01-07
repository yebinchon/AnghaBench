
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EP93XX_GPIO_REG (int ) ;
 int __raw_writeb (int,int ) ;
 int* gpio_int_debounce ;
 int * int_debounce_register_offset ;
 int irq_to_gpio (unsigned int) ;

void ep93xx_gpio_int_debounce(unsigned int irq, int enable)
{
 int line = irq_to_gpio(irq);
 int port = line >> 3;
 int port_mask = 1 << (line & 7);

 if (enable)
  gpio_int_debounce[port] |= port_mask;
 else
  gpio_int_debounce[port] &= ~port_mask;

 __raw_writeb(gpio_int_debounce[port],
  EP93XX_GPIO_REG(int_debounce_register_offset[port]));
}
