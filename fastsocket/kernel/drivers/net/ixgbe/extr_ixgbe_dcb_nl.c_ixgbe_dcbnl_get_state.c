
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int flags; } ;


 int IXGBE_FLAG_DCB_ENABLED ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u8 ixgbe_dcbnl_get_state(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 return !!(adapter->flags & IXGBE_FLAG_DCB_ENABLED);
}
