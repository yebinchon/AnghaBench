
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int ** ar7_gpio_list ;

void gpio_free(unsigned gpio)
{
 BUG_ON(!ar7_gpio_list[gpio]);
 ar7_gpio_list[gpio] = ((void*)0);
}
