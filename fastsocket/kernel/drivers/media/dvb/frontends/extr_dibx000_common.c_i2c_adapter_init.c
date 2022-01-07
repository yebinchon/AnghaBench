
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algorithm {int dummy; } ;
struct i2c_adapter {int * algo_data; struct i2c_algorithm* algo; int name; } ;
struct dibx000_i2c_master {int dummy; } ;


 int ENODEV ;
 scalar_t__ i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct dibx000_i2c_master*) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int i2c_adapter_init(struct i2c_adapter *i2c_adap,
       struct i2c_algorithm *algo, const char *name,
       struct dibx000_i2c_master *mst)
{
 strncpy(i2c_adap->name, name, sizeof(i2c_adap->name));
 i2c_adap->algo = algo;
 i2c_adap->algo_data = ((void*)0);
 i2c_set_adapdata(i2c_adap, mst);
 if (i2c_add_adapter(i2c_adap) < 0)
  return -ENODEV;
 return 0;
}
