
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 scalar_t__ RGLV ;
 scalar_t__ gpio_ba ;
 int inb (scalar_t__) ;

__attribute__((used)) static int sch_gpio_resume_get(struct gpio_chip *gc, unsigned gpio_num)
{
 return !!(inb(gpio_ba + RGLV) & (1 << gpio_num));
}
