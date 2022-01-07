
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int gpio_free (int) ;

__attribute__((used)) static int
evm_u35_teardown(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
{
 gpio_free(gpio + 7);
 gpio_free(gpio + 6);
 gpio_free(gpio + 5);
 gpio_free(gpio + 3);
 gpio_free(gpio + 2);
 gpio_free(gpio + 1);
 gpio_free(gpio + 0);
 return 0;
}
