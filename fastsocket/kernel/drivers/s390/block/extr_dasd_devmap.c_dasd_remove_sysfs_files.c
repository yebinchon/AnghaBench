
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct ccw_device {TYPE_1__ dev; } ;


 int dasd_attr_group ;
 int sysfs_remove_group (int *,int *) ;

void
dasd_remove_sysfs_files(struct ccw_device *cdev)
{
 sysfs_remove_group(&cdev->dev.kobj, &dasd_attr_group);
}
