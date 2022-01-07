
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int n_hwmon; scalar_t__ device; TYPE_3__* hwmon_list; } ;
struct ixgbe_adapter {TYPE_2__ ixgbe_hwmon_buff; TYPE_1__* pdev; } ;
struct TYPE_6__ {int dev_attr; } ;
struct TYPE_4__ {int dev; } ;


 int device_remove_file (int *,int *) ;
 int hwmon_device_unregister (scalar_t__) ;
 int kfree (TYPE_3__*) ;

__attribute__((used)) static void ixgbe_sysfs_del_adapter(struct ixgbe_adapter *adapter)
{
 int i;

 if (adapter == ((void*)0))
  return;

 for (i = 0; i < adapter->ixgbe_hwmon_buff.n_hwmon; i++) {
  device_remove_file(&adapter->pdev->dev,
      &adapter->ixgbe_hwmon_buff.hwmon_list[i].dev_attr);
 }

 kfree(adapter->ixgbe_hwmon_buff.hwmon_list);

 if (adapter->ixgbe_hwmon_buff.device)
  hwmon_device_unregister(adapter->ixgbe_hwmon_buff.device);
}
