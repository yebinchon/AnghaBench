
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int EINVAL ;
 int * evm_sw_gpio ;
 int gpio_direction_input (int ) ;
 int gpio_export (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int evm_sw_setup(struct i2c_client *client, int gpio,
   unsigned ngpio, void *c)
{
 int status;
 int i;
 char label[10];

 for (i = 0; i < 4; ++i) {
  snprintf(label, 10, "user_sw%d", i);
  status = gpio_request(gpio, label);
  if (status)
   goto out_free;
  evm_sw_gpio[i] = gpio++;

  status = gpio_direction_input(evm_sw_gpio[i]);
  if (status) {
   gpio_free(evm_sw_gpio[i]);
   evm_sw_gpio[i] = -EINVAL;
   goto out_free;
  }

  status = gpio_export(evm_sw_gpio[i], 0);
  if (status) {
   gpio_free(evm_sw_gpio[i]);
   evm_sw_gpio[i] = -EINVAL;
   goto out_free;
  }
 }
 return status;
out_free:
 for (i = 0; i < 4; ++i) {
  if (evm_sw_gpio[i] != -EINVAL) {
   gpio_free(evm_sw_gpio[i]);
   evm_sw_gpio[i] = -EINVAL;
  }
 }
 return status;
}
