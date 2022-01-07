
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int din; } ;


 int __raw_readl (int *) ;
 TYPE_1__* txx9_pioptr ;

__attribute__((used)) static int txx9_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 return __raw_readl(&txx9_pioptr->din) & (1 << offset);
}
