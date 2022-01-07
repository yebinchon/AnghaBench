
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_i2c_bus {struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;



struct i2c_adapter *pmac_i2c_get_adapter(struct pmac_i2c_bus *bus)
{
 return bus->adapter;
}
