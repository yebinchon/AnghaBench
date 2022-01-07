
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct device {TYPE_1__* class; } ;
struct TYPE_2__ {struct kobject* dev_kobj; } ;


 struct kobject* sysfs_dev_char_kobj ;

__attribute__((used)) static struct kobject *device_to_dev_kobj(struct device *dev)
{
 struct kobject *kobj;

 if (dev->class)
  kobj = dev->class->dev_kobj;
 else
  kobj = sysfs_dev_char_kobj;

 return kobj;
}
