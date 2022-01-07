
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIN_TO_PORT (unsigned int) ;
 int U300_GPIO_PORTX_SPACING ;
 scalar_t__ U300_GPIO_PXPDIR ;
 int readl (scalar_t__) ;
 scalar_t__ virtbase ;

int gpio_get_value(unsigned gpio)
{
 return readl(virtbase + U300_GPIO_PXPDIR +
   PIN_TO_PORT(gpio) * U300_GPIO_PORTX_SPACING) & (1 << (gpio & 0x07));
}
