
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbevf_adapter {int reset_task; } ;


 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void ixgbevf_tx_timeout(struct net_device *netdev)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);


 schedule_work(&adapter->reset_task);
}
