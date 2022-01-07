
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct igb_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 struct igb_adapter* netdev_priv (struct net_device*) ;
 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static int igb_ethtool_begin(struct net_device *netdev)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 pm_runtime_get_sync(&adapter->pdev->dev);
 return 0;
}
