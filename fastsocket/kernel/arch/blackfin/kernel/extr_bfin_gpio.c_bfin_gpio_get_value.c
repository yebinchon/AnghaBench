
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;


 int get_gpio_data (unsigned int) ;
 int get_gpio_edge (unsigned int) ;
 TYPE_1__** gpio_array ;
 size_t gpio_bank (unsigned int) ;
 int gpio_sub_n (unsigned int) ;
 int local_irq_restore_hw (unsigned long) ;
 int local_irq_save_hw (unsigned long) ;
 int set_gpio_edge (unsigned int,int) ;
 scalar_t__ unlikely (int ) ;

int bfin_gpio_get_value(unsigned gpio)
{



 unsigned long flags;

 if (unlikely(get_gpio_edge(gpio))) {
  int ret;
  local_irq_save_hw(flags);
  set_gpio_edge(gpio, 0);
  ret = get_gpio_data(gpio);
  set_gpio_edge(gpio, 1);
  local_irq_restore_hw(flags);
  return ret;
 } else
  return get_gpio_data(gpio);

}
