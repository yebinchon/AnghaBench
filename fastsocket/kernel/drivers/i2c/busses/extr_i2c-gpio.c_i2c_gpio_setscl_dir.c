
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_gpio_platform_data {int scl_pin; } ;


 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int ) ;

__attribute__((used)) static void i2c_gpio_setscl_dir(void *data, int state)
{
 struct i2c_gpio_platform_data *pdata = data;

 if (state)
  gpio_direction_input(pdata->scl_pin);
 else
  gpio_direction_output(pdata->scl_pin, 0);
}
