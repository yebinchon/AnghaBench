
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int dev_attr_user_sw ;
 int device_remove_file (int *,int *) ;
 int gpio_free (int) ;
 int sw_gpio ;

__attribute__((used)) static int
evm_u18_teardown(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
{
 gpio_free(gpio + 1);
 gpio_free(gpio + 2);
 gpio_free(gpio + 3);

 if (sw_gpio > 0) {
  device_remove_file(&client->dev, &dev_attr_user_sw);
  gpio_free(sw_gpio);
 }
 return 0;
}
