
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct root_device {TYPE_1__ dev; scalar_t__ owner; } ;
struct device {int dummy; } ;


 int device_unregister (struct device*) ;
 int sysfs_remove_link (int *,char*) ;
 struct root_device* to_root_device (struct device*) ;

void root_device_unregister(struct device *dev)
{
 struct root_device *root = to_root_device(dev);

 if (root->owner)
  sysfs_remove_link(&root->dev.kobj, "module");

 device_unregister(dev);
}
