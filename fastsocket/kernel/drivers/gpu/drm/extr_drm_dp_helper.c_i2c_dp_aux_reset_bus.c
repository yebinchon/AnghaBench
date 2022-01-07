
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int i2c_algo_dp_aux_address (struct i2c_adapter*,int ,int) ;
 int i2c_algo_dp_aux_stop (struct i2c_adapter*,int) ;

__attribute__((used)) static void
i2c_dp_aux_reset_bus(struct i2c_adapter *adapter)
{
 (void) i2c_algo_dp_aux_address(adapter, 0, 0);
 (void) i2c_algo_dp_aux_stop(adapter, 0);
}
