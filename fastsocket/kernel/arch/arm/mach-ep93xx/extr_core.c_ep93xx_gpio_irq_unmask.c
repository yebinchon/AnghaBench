
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ep93xx_gpio_update_int_params (int) ;
 int* gpio_int_unmasked ;
 int irq_to_gpio (unsigned int) ;

__attribute__((used)) static void ep93xx_gpio_irq_unmask(unsigned int irq)
{
 int line = irq_to_gpio(irq);
 int port = line >> 3;

 gpio_int_unmasked[port] |= 1 << (line & 7);
 ep93xx_gpio_update_int_params(port);
}
