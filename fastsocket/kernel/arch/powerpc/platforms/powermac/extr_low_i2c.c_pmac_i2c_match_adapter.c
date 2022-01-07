
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_i2c_bus {struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;


 struct pmac_i2c_bus* pmac_i2c_find_bus (struct device_node*) ;

int pmac_i2c_match_adapter(struct device_node *dev, struct i2c_adapter *adapter)
{
 struct pmac_i2c_bus *bus = pmac_i2c_find_bus(dev);

 if (bus == ((void*)0))
  return 0;
 return (bus->adapter == adapter);
}
