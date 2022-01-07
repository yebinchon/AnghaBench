
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_bt_data {int gpio_reset; int gpio_pwr; } ;


 int gpio_set_value (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static void tosa_bt_on(struct tosa_bt_data *data)
{
 gpio_set_value(data->gpio_reset, 0);
 gpio_set_value(data->gpio_pwr, 1);
 gpio_set_value(data->gpio_reset, 1);
 mdelay(20);
 gpio_set_value(data->gpio_reset, 0);
}
