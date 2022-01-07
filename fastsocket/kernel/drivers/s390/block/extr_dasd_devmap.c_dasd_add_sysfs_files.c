
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct ccw_device {TYPE_1__ dev; } ;


 int dasd_attr_group ;
 int sysfs_create_group (int *,int *) ;

int
dasd_add_sysfs_files(struct ccw_device *cdev)
{
 return sysfs_create_group(&cdev->dev.kobj, &dasd_attr_group);
}
