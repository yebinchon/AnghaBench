
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* gpio_int_unmasked ;

void ep93xx_gpio_int_mask(unsigned line)
{
 gpio_int_unmasked[line >> 3] &= ~(1 << (line & 7));
}
