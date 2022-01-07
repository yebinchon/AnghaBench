
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct driver_data {TYPE_1__* pdev; } ;
struct TYPE_4__ {int attr; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 TYPE_2__ dev_attr_status ;
 int dev_warn (int *,char*) ;
 scalar_t__ sysfs_create_file (struct kobject*,int *) ;

__attribute__((used)) static int mtip_hw_sysfs_init(struct driver_data *dd, struct kobject *kobj)
{
 if (!kobj || !dd)
  return -EINVAL;

 if (sysfs_create_file(kobj, &dev_attr_status.attr))
  dev_warn(&dd->pdev->dev,
   "Error creating 'status' sysfs entry\n");
 return 0;
}
