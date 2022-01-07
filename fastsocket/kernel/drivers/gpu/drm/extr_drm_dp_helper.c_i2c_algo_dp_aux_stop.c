
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_dp_aux_data {int running; } ;
struct i2c_adapter {struct i2c_algo_dp_aux_data* algo_data; } ;


 int MODE_I2C_READ ;
 int MODE_I2C_STOP ;
 int MODE_I2C_WRITE ;
 int i2c_algo_dp_aux_transaction (struct i2c_adapter*,int,int ,int *) ;

__attribute__((used)) static void
i2c_algo_dp_aux_stop(struct i2c_adapter *adapter, bool reading)
{
 struct i2c_algo_dp_aux_data *algo_data = adapter->algo_data;
 int mode = MODE_I2C_STOP;

 if (reading)
  mode |= MODE_I2C_READ;
 else
  mode |= MODE_I2C_WRITE;
 if (algo_data->running) {
  (void) i2c_algo_dp_aux_transaction(adapter, mode, 0, ((void*)0));
  algo_data->running = 0;
 }
}
