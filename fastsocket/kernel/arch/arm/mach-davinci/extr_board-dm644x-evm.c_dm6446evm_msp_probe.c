
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct i2c_client* dm6446evm_msp ;

__attribute__((used)) static int dm6446evm_msp_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 dm6446evm_msp = client;
 return 0;
}
