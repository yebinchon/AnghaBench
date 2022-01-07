
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device (int *,int *,struct device_node*,int ) ;
 int i2c_bus_type ;
 int of_dev_node_match ;
 struct i2c_client* to_i2c_client (struct device*) ;

struct i2c_client *of_find_i2c_device_by_node(struct device_node *node)
{
 struct device *dev;

 dev = bus_find_device(&i2c_bus_type, ((void*)0), node,
      of_dev_node_match);
 if (!dev)
  return ((void*)0);

 return to_i2c_client(dev);
}
