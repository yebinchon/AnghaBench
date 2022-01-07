
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_dp_aux_prepare_bus (struct i2c_adapter*) ;

int
i2c_dp_aux_add_bus(struct i2c_adapter *adapter)
{
 int error;

 error = i2c_dp_aux_prepare_bus(adapter);
 if (error)
  return error;
 error = i2c_add_adapter(adapter);
 return error;
}
