
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {TYPE_1__* p; } ;
struct attribute_group {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 int sysfs_create_group (int *,struct attribute_group const*) ;
 int sysfs_remove_group (int *,struct attribute_group const*) ;

__attribute__((used)) static int driver_add_groups(struct device_driver *drv,
        const struct attribute_group **groups)
{
 int error = 0;
 int i;

 if (groups) {
  for (i = 0; groups[i]; i++) {
   error = sysfs_create_group(&drv->p->kobj, groups[i]);
   if (error) {
    while (--i >= 0)
     sysfs_remove_group(&drv->p->kobj,
          groups[i]);
    break;
   }
  }
 }
 return error;
}
