
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dev_attr_max_rss ;
 int device_remove_file (struct device*,int *) ;

void qlcnic_sriov_vf_remove_sysfs(struct qlcnic_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;

 device_remove_file(dev, &dev_attr_max_rss);
}
