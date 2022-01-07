
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pc8736x_gpio_current (unsigned int) ;
 int pc8736x_gpio_set (unsigned int,int) ;

__attribute__((used)) static void pc8736x_gpio_change(unsigned index)
{
 pc8736x_gpio_set(index, !pc8736x_gpio_current(index));
}
