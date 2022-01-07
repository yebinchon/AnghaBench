
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_PIN_PB (int) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void atevklcd10x_lcdc_power_control(int on)
{
 gpio_set_value(GPIO_PIN_PB(15), on);
}
