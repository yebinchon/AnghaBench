
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* data_clear; void* data_set; } ;


 TYPE_1__** gpio_array ;
 size_t gpio_bank (unsigned int) ;
 void* gpio_bit (unsigned int) ;

void bfin_gpio_set_value(unsigned gpio, int arg)
{
 if (arg)
  gpio_array[gpio_bank(gpio)]->data_set = gpio_bit(gpio);
 else
  gpio_array[gpio_bank(gpio)]->data_clear = gpio_bit(gpio);
}
