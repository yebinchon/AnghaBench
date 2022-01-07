
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
 int dev_warn (struct device*,char*) ;
 scalar_t__ device_create_file (struct device*,int *) ;

__attribute__((used)) static void
netxen_create_sysfs_entries(struct netxen_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;

 if (adapter->capabilities & NX_FW_CAPABILITY_BDG) {

  if (device_create_file(dev, &dev_attr_bridged_mode)) {
   dev_warn(dev,
    "failed to create bridged_mode sysfs entry\n");
  }
 }
}
