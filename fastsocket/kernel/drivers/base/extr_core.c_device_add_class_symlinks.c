
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* parent; } ;
struct device {TYPE_4__ kobj; TYPE_3__* class; struct device* parent; int bus; } ;
struct TYPE_10__ {TYPE_2__* p; int name; } ;
struct TYPE_8__ {TYPE_4__ kobj; } ;
struct TYPE_9__ {TYPE_1__ class_subsys; } ;


 char* dev_name (struct device*) ;
 scalar_t__ device_is_not_partition (struct device*) ;
 int kfree (char*) ;
 char* make_class_name (int ,TYPE_4__*) ;
 int sysfs_create_link (TYPE_4__*,TYPE_4__*,char*) ;
 int sysfs_remove_link (TYPE_4__*,char*) ;

__attribute__((used)) static int device_add_class_symlinks(struct device *dev)
{
 int error;

 if (!dev->class)
  return 0;

 error = sysfs_create_link(&dev->kobj,
      &dev->class->p->class_subsys.kobj,
      "subsystem");
 if (error)
  goto out;
 error = sysfs_create_link(&dev->class->p->class_subsys.kobj,
      &dev->kobj, dev_name(dev));
 if (error)
  goto out_subsys;

 if (dev->parent && device_is_not_partition(dev)) {
  error = sysfs_create_link(&dev->kobj, &dev->parent->kobj,
       "device");
  if (error)
   goto out_busid;
 }
 return 0;

out_busid:
 sysfs_remove_link(&dev->class->p->class_subsys.kobj, dev_name(dev));


out_subsys:
 sysfs_remove_link(&dev->kobj, "subsystem");
out:
 return error;
}
