
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int kobj; TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* p; } ;
struct TYPE_3__ {int kobj; } ;


 char* kobject_name (int *) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static int driver_sysfs_add(struct device *dev)
{
 int ret;

 ret = sysfs_create_link(&dev->driver->p->kobj, &dev->kobj,
     kobject_name(&dev->kobj));
 if (ret == 0) {
  ret = sysfs_create_link(&dev->kobj, &dev->driver->p->kobj,
     "driver");
  if (ret)
   sysfs_remove_link(&dev->driver->p->kobj,
     kobject_name(&dev->kobj));
 }
 return ret;
}
