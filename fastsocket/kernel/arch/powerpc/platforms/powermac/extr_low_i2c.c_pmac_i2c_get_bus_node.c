
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_i2c_bus {struct device_node* busnode; } ;
struct device_node {int dummy; } ;



struct device_node *pmac_i2c_get_bus_node(struct pmac_i2c_bus *bus)
{
 return bus->busnode;
}
