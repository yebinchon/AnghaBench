
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORGI_GPIO_LED_GREEN ;
 int arm_machine_restart (char,char const*) ;
 int gpio_set_value (int ,int) ;
 int machine_is_corgi () ;

__attribute__((used)) static void corgi_restart(char mode, const char *cmd)
{
 if (!machine_is_corgi())

  gpio_set_value(CORGI_GPIO_LED_GREEN, 1);

 arm_machine_restart('h', cmd);
}
