
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct rio_dev {TYPE_1__ dev; } ;


 int rio_config_attr ;
 int sysfs_remove_bin_file (int *,int *) ;

void rio_remove_sysfs_dev_files(struct rio_dev *rdev)
{
 sysfs_remove_bin_file(&rdev->dev.kobj, &rio_config_attr);
}
