
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int toggle; } ;


 scalar_t__ ANOMALY_05000311 ;
 scalar_t__ ANOMALY_05000323 ;
 int AWA_DUMMY_READ (int ) ;
 TYPE_1__** gpio_array ;
 size_t gpio_bank (unsigned int) ;
 int gpio_bit (unsigned int) ;
 int local_irq_restore_hw (unsigned long) ;
 int local_irq_save_hw (unsigned long) ;
 int toggle ;

void set_gpio_toggle(unsigned gpio)
{
 unsigned long flags;
 if (ANOMALY_05000311 || ANOMALY_05000323)
  local_irq_save_hw(flags);
 gpio_array[gpio_bank(gpio)]->toggle = gpio_bit(gpio);
 if (ANOMALY_05000311 || ANOMALY_05000323) {
  AWA_DUMMY_READ(toggle);
  local_irq_restore_hw(flags);
 }
}
