
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_attribute {int attr; } ;
struct device_driver {TYPE_1__* p; } ;
struct TYPE_2__ {int kobj; } ;


 int sysfs_remove_file (int *,int *) ;

void driver_remove_file(struct device_driver *drv,
   struct driver_attribute *attr)
{
 if (drv)
  sysfs_remove_file(&drv->p->kobj, &attr->attr);
}
