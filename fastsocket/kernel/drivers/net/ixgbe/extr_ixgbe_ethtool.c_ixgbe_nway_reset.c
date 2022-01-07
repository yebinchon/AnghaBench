
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;


 int ixgbe_reinit_locked (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int ixgbe_nway_reset(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 if (netif_running(netdev))
  ixgbe_reinit_locked(adapter);

 return 0;
}
