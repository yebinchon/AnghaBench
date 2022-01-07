
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORGI_GPIO_LED_GREEN ;
 int arm_machine_restart (char,int *) ;
 int gpio_set_value (int ,int ) ;
 int machine_is_corgi () ;

__attribute__((used)) static void corgi_poweroff(void)
{
 if (!machine_is_corgi())

  gpio_set_value(CORGI_GPIO_LED_GREEN, 0);

 arm_machine_restart('h', ((void*)0));
}
