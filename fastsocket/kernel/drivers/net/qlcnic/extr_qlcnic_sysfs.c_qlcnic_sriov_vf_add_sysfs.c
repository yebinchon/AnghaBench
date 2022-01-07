
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dev_attr_max_rss ;
 int dev_info (struct device*,char*) ;
 scalar_t__ device_create_file (struct device*,int *) ;

void qlcnic_sriov_vf_add_sysfs(struct qlcnic_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;

 if (device_create_file(dev, &dev_attr_max_rss))
  dev_info(dev, "failed to create rss sysfs entry\n");
}
