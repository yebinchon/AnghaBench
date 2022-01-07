
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_gpio_platform_data {int sda_pin; } ;


 int gpio_get_value (int ) ;

__attribute__((used)) static int i2c_gpio_getsda(void *data)
{
 struct i2c_gpio_platform_data *pdata = data;

 return gpio_get_value(pdata->sda_pin);
}
