
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_algo_dp_aux_data {int running; } ;
struct i2c_adapter {struct i2c_algo_dp_aux_data* algo_data; } ;


 int EIO ;
 int MODE_I2C_READ ;
 int i2c_algo_dp_aux_transaction (struct i2c_adapter*,int ,int ,int *) ;

__attribute__((used)) static int
i2c_algo_dp_aux_get_byte(struct i2c_adapter *adapter, u8 *byte_ret)
{
 struct i2c_algo_dp_aux_data *algo_data = adapter->algo_data;
 int ret;

 if (!algo_data->running)
  return -EIO;

 ret = i2c_algo_dp_aux_transaction(adapter, MODE_I2C_READ, 0, byte_ret);
 return ret;
}
