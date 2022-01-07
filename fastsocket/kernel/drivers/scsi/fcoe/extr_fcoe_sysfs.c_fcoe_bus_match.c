
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int * bus; } ;


 int fcoe_bus_type ;

__attribute__((used)) static int fcoe_bus_match(struct device *dev,
     struct device_driver *drv)
{
 if (dev->bus == &fcoe_bus_type)
  return 1;
 return 0;
}
