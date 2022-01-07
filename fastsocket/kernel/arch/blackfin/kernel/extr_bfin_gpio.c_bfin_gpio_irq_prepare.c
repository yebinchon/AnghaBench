
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_USAGE ;
 int __bfin_gpio_direction_input (unsigned int) ;
 int local_irq_restore_hw (unsigned long) ;
 int local_irq_save_hw (unsigned long) ;
 int port_setup (unsigned int,int ) ;

void bfin_gpio_irq_prepare(unsigned gpio)
{




 port_setup(gpio, GPIO_USAGE);






}
