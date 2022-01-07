
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {struct gpio_chip* chip; } ;


 TYPE_1__* gpio_desc ;

__attribute__((used)) static inline struct gpio_chip *gpio_to_chip(unsigned gpio)
{
 return gpio_desc[gpio].chip;
}
