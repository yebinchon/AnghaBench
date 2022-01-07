
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {TYPE_1__* p; } ;
struct device {int kobj; struct device_driver* driver; } ;
struct TYPE_2__ {int kobj; } ;


 char* kobject_name (int *) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void driver_sysfs_remove(struct device *dev)
{
 struct device_driver *drv = dev->driver;

 if (drv) {
  sysfs_remove_link(&drv->p->kobj, kobject_name(&dev->kobj));
  sysfs_remove_link(&dev->kobj, "driver");
 }
}
