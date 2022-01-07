
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bus_type {int * dev_attrs; } ;


 scalar_t__ attr_name (int ) ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static int device_add_attrs(struct bus_type *bus, struct device *dev)
{
 int error = 0;
 int i;

 if (!bus->dev_attrs)
  return 0;

 for (i = 0; attr_name(bus->dev_attrs[i]); i++) {
  error = device_create_file(dev, &bus->dev_attrs[i]);
  if (error) {
   while (--i >= 0)
    device_remove_file(dev, &bus->dev_attrs[i]);
   break;
  }
 }
 return error;
}
