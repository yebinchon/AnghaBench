
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int EINVAL ;
 int * evm_sw_gpio ;
 int gpio_free (int ) ;
 int gpio_unexport (int ) ;

__attribute__((used)) static int evm_sw_teardown(struct i2c_client *client, int gpio,
   unsigned ngpio, void *c)
{
 int i;

 for (i = 0; i < 4; ++i) {
  if (evm_sw_gpio[i] != -EINVAL) {
   gpio_unexport(evm_sw_gpio[i]);
   gpio_free(evm_sw_gpio[i]);
   evm_sw_gpio[i] = -EINVAL;
  }
 }
 return 0;
}
