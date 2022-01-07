
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct attribute_group {int dummy; } ;


 int sysfs_remove_group (int *,struct attribute_group const*) ;

__attribute__((used)) static void device_remove_groups(struct device *dev,
     const struct attribute_group **groups)
{
 int i;

 if (groups)
  for (i = 0; groups[i]; i++)
   sysfs_remove_group(&dev->kobj, groups[i]);
}
