
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_chip {int dummy; } ;


 unsigned int CGIO ;
 scalar_t__ gpio_ba ;
 int gpio_lock ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int sch_gpio_core_set (struct gpio_chip*,unsigned int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int sch_gpio_core_direction_out(struct gpio_chip *gc,
     unsigned gpio_num, int val)
{
 u8 curr_dirs;
 unsigned short offset, bit;

 sch_gpio_core_set(gc, gpio_num, val);

 spin_lock(&gpio_lock);

 offset = CGIO + gpio_num / 8;
 bit = gpio_num % 8;

 curr_dirs = inb(gpio_ba + offset);
 if (curr_dirs & (1 << bit))
  outb(curr_dirs & ~(1 << bit), gpio_ba + offset);

 spin_unlock(&gpio_lock);
 return 0;
}
