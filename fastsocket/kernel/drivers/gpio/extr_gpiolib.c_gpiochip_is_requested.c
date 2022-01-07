
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {unsigned int base; } ;
struct TYPE_2__ {char const* label; int flags; struct gpio_chip* chip; } ;


 int FLAG_REQUESTED ;
 TYPE_1__* gpio_desc ;
 int gpio_is_valid (unsigned int) ;
 scalar_t__ test_bit (int ,int *) ;

const char *gpiochip_is_requested(struct gpio_chip *chip, unsigned offset)
{
 unsigned gpio = chip->base + offset;

 if (!gpio_is_valid(gpio) || gpio_desc[gpio].chip != chip)
  return ((void*)0);
 if (test_bit(FLAG_REQUESTED, &gpio_desc[gpio].flags) == 0)
  return ((void*)0);



 return "?";

}
