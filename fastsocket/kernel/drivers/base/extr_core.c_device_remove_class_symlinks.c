
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* parent; } ;
struct device {TYPE_5__ kobj; TYPE_4__* class; TYPE_1__* parent; } ;
struct TYPE_10__ {TYPE_3__* p; int name; } ;
struct TYPE_8__ {TYPE_5__ kobj; } ;
struct TYPE_9__ {TYPE_2__ class_subsys; } ;
struct TYPE_7__ {TYPE_5__ kobj; } ;


 char* dev_name (struct device*) ;
 scalar_t__ device_is_not_partition (struct device*) ;
 int kfree (char*) ;
 char* make_class_name (int ,TYPE_5__*) ;
 int sysfs_remove_link (TYPE_5__*,char*) ;

__attribute__((used)) static void device_remove_class_symlinks(struct device *dev)
{
 if (!dev->class)
  return;
 if (dev->parent && device_is_not_partition(dev))
  sysfs_remove_link(&dev->kobj, "device");

 sysfs_remove_link(&dev->class->p->class_subsys.kobj, dev_name(dev));


 sysfs_remove_link(&dev->kobj, "subsystem");
}
