
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pmac_i2c_bus {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 struct pmac_i2c_bus* pmac_i2c_adapter_to_bus (struct i2c_adapter*) ;
 struct device_node* pmac_i2c_get_bus_node (struct pmac_i2c_bus*) ;
 scalar_t__ pmac_i2c_get_dev_addr (struct device_node*) ;
 int pmac_i2c_match_adapter (struct device_node*,struct i2c_adapter*) ;
 int printk (char*,char const*,scalar_t__) ;
 int wf_max6690_create (struct i2c_adapter*,scalar_t__,char const*) ;

__attribute__((used)) static int wf_max6690_attach(struct i2c_adapter *adapter)
{
 struct device_node *busnode, *dev = ((void*)0);
 struct pmac_i2c_bus *bus;
 const char *loc;

 bus = pmac_i2c_adapter_to_bus(adapter);
 if (bus == ((void*)0))
  return -ENODEV;
 busnode = pmac_i2c_get_bus_node(bus);

 while ((dev = of_get_next_child(busnode, dev)) != ((void*)0)) {
  u8 addr;




  if (!pmac_i2c_match_adapter(dev, adapter))
   continue;
  if (!of_device_is_compatible(dev, "max6690"))
   continue;
  addr = pmac_i2c_get_dev_addr(dev);
  loc = of_get_property(dev, "hwsensor-location", ((void*)0));
  if (loc == ((void*)0) || addr == 0)
   continue;
  printk("found max6690, loc=%s addr=0x%02x\n", loc, addr);
  wf_max6690_create(adapter, addr, loc);
 }

 return 0;
}
