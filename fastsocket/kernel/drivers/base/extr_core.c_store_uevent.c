
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int kobj; } ;
typedef size_t ssize_t ;
typedef enum kobject_action { ____Placeholder_kobject_action } kobject_action ;


 int KOBJ_ADD ;
 int dev_err (struct device*,char*) ;
 scalar_t__ kobject_action_type (char const*,size_t,int*) ;
 int kobject_uevent (int *,int) ;

__attribute__((used)) static ssize_t store_uevent(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 enum kobject_action action;

 if (kobject_action_type(buf, count, &action) == 0) {
  kobject_uevent(&dev->kobj, action);
  goto out;
 }

 dev_err(dev, "uevent: unsupported action-string; this will "
       "be ignored in a future kernel version\n");
 kobject_uevent(&dev->kobj, KOBJ_ADD);
out:
 return count;
}
