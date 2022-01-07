
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int * evm_led_dev ;
 int platform_device_unregister (int *) ;

__attribute__((used)) static int evm_led_teardown(struct i2c_client *client, int gpio,
    unsigned ngpio, void *c)
{
 if (evm_led_dev) {
  platform_device_unregister(evm_led_dev);
  evm_led_dev = ((void*)0);
 }
 return 0;
}
