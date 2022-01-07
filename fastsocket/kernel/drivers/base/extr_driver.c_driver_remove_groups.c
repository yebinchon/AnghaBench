
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {TYPE_1__* p; } ;
struct attribute_group {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 int sysfs_remove_group (int *,struct attribute_group const*) ;

__attribute__((used)) static void driver_remove_groups(struct device_driver *drv,
     const struct attribute_group **groups)
{
 int i;

 if (groups)
  for (i = 0; groups[i]; i++)
   sysfs_remove_group(&drv->p->kobj, groups[i]);
}
