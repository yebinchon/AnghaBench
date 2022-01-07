
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_chip {int dummy; } ;


 unsigned int CGLV ;
 scalar_t__ gpio_ba ;
 int gpio_lock ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sch_gpio_core_set(struct gpio_chip *gc, unsigned gpio_num, int val)
{
 u8 curr_vals;
 unsigned short offset, bit;

 spin_lock(&gpio_lock);

 offset = CGLV + gpio_num / 8;
 bit = gpio_num % 8;

 curr_vals = inb(gpio_ba + offset);

 if (val)
  outb(curr_vals | (1 << bit), gpio_ba + offset);
 else
  outb((curr_vals & ~(1 << bit)), gpio_ba + offset);
 spin_unlock(&gpio_lock);
}
