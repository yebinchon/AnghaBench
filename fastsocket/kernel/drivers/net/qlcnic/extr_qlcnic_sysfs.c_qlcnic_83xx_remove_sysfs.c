
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct device {int kobj; } ;
struct TYPE_2__ {struct device dev; } ;


 int bin_attr_flash ;
 int qlcnic_remove_diag_entries (struct qlcnic_adapter*) ;
 int sysfs_remove_bin_file (int *,int *) ;

void qlcnic_83xx_remove_sysfs(struct qlcnic_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;

 qlcnic_remove_diag_entries(adapter);
 sysfs_remove_bin_file(&dev->kobj, &bin_attr_flash);
}
