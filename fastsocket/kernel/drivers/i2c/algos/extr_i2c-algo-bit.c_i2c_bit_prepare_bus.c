
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_bit_data {int dummy; } ;
struct i2c_adapter {int retries; int * algo; int name; struct i2c_algo_bit_data* algo_data; } ;


 int ENODEV ;
 scalar_t__ bit_test ;
 int i2c_bit_algo ;
 int test_bus (struct i2c_algo_bit_data*,int ) ;

__attribute__((used)) static int i2c_bit_prepare_bus(struct i2c_adapter *adap)
{
 struct i2c_algo_bit_data *bit_adap = adap->algo_data;

 if (bit_test) {
  int ret = test_bus(bit_adap, adap->name);
  if (ret < 0)
   return -ENODEV;
 }


 adap->algo = &i2c_bit_algo;
 adap->retries = 3;

 return 0;
}
