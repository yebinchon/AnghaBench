
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int BUG_ON (int) ;
 int evm_led_teardown (struct i2c_client*,int,int,void*) ;
 int evm_sw_teardown (struct i2c_client*,int,int,void*) ;

__attribute__((used)) static int evm_pcf_teardown(struct i2c_client *client, int gpio,
   unsigned int ngpio, void *c)
{
 BUG_ON(ngpio < 8);

 evm_sw_teardown(client, gpio, 4, c);
 evm_led_teardown(client, gpio+4, 4, c);

 return 0;
}
