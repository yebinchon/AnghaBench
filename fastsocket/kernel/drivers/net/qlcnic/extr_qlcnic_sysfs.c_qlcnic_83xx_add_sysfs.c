
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct device {int kobj; } ;
struct TYPE_2__ {struct device dev; } ;


 int bin_attr_flash ;
 int dev_info (struct device*,char*) ;
 int qlcnic_create_diag_entries (struct qlcnic_adapter*) ;
 scalar_t__ sysfs_create_bin_file (int *,int *) ;

void qlcnic_83xx_add_sysfs(struct qlcnic_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;

 qlcnic_create_diag_entries(adapter);

 if (sysfs_create_bin_file(&dev->kobj, &bin_attr_flash))
  dev_info(dev, "failed to create flash sysfs entry\n");
}
