
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int U300_GPIO_NUM_PORTS ;
 int U300_GPIO_PINS_PER_PORT ;

int gpio_is_valid(int number)
{
 if (number >= 0 &&
     number < (U300_GPIO_NUM_PORTS * U300_GPIO_PINS_PER_PORT))
  return 1;
 return 0;
}
