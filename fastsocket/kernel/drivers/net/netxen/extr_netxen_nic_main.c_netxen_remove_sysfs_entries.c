
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netxen_adapter {int capabilities; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int NX_FW_CAPABILITY_BDG ;
 int dev_attr_bridged_mode ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static void
netxen_remove_sysfs_entries(struct netxen_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;

 if (adapter->capabilities & NX_FW_CAPABILITY_BDG)
  device_remove_file(dev, &dev_attr_bridged_mode);
}
