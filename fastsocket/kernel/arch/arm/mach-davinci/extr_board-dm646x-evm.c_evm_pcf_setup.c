
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int EINVAL ;
 int evm_led_setup (struct i2c_client*,int,int,void*) ;
 int evm_sw_setup (struct i2c_client*,int,int,void*) ;

__attribute__((used)) static int evm_pcf_setup(struct i2c_client *client, int gpio,
   unsigned int ngpio, void *c)
{
 int status;

 if (ngpio < 8)
  return -EINVAL;

 status = evm_sw_setup(client, gpio, 4, c);
 if (status)
  return status;

 return evm_led_setup(client, gpio+4, 4, c);
}
