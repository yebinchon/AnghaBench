
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_gpio_platform_data {int sda_pin; } ;


 int gpio_set_value (int ,int) ;

__attribute__((used)) static void i2c_gpio_setsda_val(void *data, int state)
{
 struct i2c_gpio_platform_data *pdata = data;

 gpio_set_value(pdata->sda_pin, state);
}
