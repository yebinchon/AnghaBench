
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_PTH2 ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static void reset_lcd_module(void)
{
 gpio_set_value(GPIO_PTH2, 0);
 mdelay(2);
 gpio_set_value(GPIO_PTH2, 1);
 mdelay(1);
}
