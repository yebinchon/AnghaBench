
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AWA_DUMMY_READ (int ) ;
 int EINVAL ;
 int __bfin_gpio_direction_input (unsigned int) ;
 size_t gpio_bank (unsigned int) ;
 int gpio_bit (unsigned int) ;
 int gpio_error (unsigned int) ;
 int inen ;
 int local_irq_restore_hw (unsigned long) ;
 int local_irq_save_hw (unsigned long) ;
 int* reserved_gpio_map ;

int bfin_gpio_direction_input(unsigned gpio)
{
 unsigned long flags;

 if (!(reserved_gpio_map[gpio_bank(gpio)] & gpio_bit(gpio))) {
  gpio_error(gpio);
  return -EINVAL;
 }

 local_irq_save_hw(flags);
 __bfin_gpio_direction_input(gpio);
 AWA_DUMMY_READ(inen);
 local_irq_restore_hw(flags);

 return 0;
}
