
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_chip {int dummy; } ;


 scalar_t__ RGIO ;
 scalar_t__ gpio_ba ;
 int gpio_lock ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int sch_gpio_resume_direction_in(struct gpio_chip *gc,
     unsigned gpio_num)
{
 u8 curr_dirs;

 spin_lock(&gpio_lock);

 curr_dirs = inb(gpio_ba + RGIO);

 if (!(curr_dirs & (1 << gpio_num)))
  outb(curr_dirs | (1 << gpio_num) , gpio_ba + RGIO);

 spin_unlock(&gpio_lock);
 return 0;
}
