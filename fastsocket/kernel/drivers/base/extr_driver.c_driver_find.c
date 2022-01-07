
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct driver_private {struct device_driver* driver; } ;
struct device_driver {int dummy; } ;
struct bus_type {TYPE_1__* p; } ;
struct TYPE_2__ {int drivers_kset; } ;


 struct kobject* kset_find_obj (int ,char const*) ;
 struct driver_private* to_driver (struct kobject*) ;

struct device_driver *driver_find(const char *name, struct bus_type *bus)
{
 struct kobject *k = kset_find_obj(bus->p->drivers_kset, name);
 struct driver_private *priv;

 if (k) {
  priv = to_driver(k);
  return priv->driver;
 }
 return ((void*)0);
}
