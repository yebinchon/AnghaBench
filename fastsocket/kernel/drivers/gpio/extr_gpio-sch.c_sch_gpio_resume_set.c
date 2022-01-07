
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_chip {int dummy; } ;


 scalar_t__ RGLV ;
 scalar_t__ gpio_ba ;
 int gpio_lock ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sch_gpio_resume_set(struct gpio_chip *gc,
    unsigned gpio_num, int val)
{
 u8 curr_vals;

 spin_lock(&gpio_lock);

 curr_vals = inb(gpio_ba + RGLV);

 if (val)
  outb(curr_vals | (1 << gpio_num), gpio_ba + RGLV);
 else
  outb((curr_vals & ~(1 << gpio_num)), gpio_ba + RGLV);

 spin_unlock(&gpio_lock);
}
