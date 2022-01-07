
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_bit_prepare_bus (struct i2c_adapter*) ;

int i2c_bit_add_bus(struct i2c_adapter *adap)
{
 int err;

 err = i2c_bit_prepare_bus(adap);
 if (err)
  return err;

 return i2c_add_adapter(adap);
}
