
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct driver_private {struct device_driver* driver; } ;
struct device_driver {TYPE_1__* p; } ;
struct TYPE_2__ {int kobj; } ;


 struct kobject* kobject_get (int *) ;
 struct driver_private* to_driver (struct kobject*) ;

struct device_driver *get_driver(struct device_driver *drv)
{
 if (drv) {
  struct driver_private *priv;
  struct kobject *kobj;

  kobj = kobject_get(&drv->p->kobj);
  priv = to_driver(kobj);
  return priv->driver;
 }
 return ((void*)0);
}
