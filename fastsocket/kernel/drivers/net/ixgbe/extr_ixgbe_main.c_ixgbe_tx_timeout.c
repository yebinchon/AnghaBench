
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;


 int ixgbe_tx_timeout_reset (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbe_tx_timeout(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);


 ixgbe_tx_timeout_reset(adapter);
}
