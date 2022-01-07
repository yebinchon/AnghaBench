
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int dcbx_cap; } ;


 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u8 ixgbe_dcbnl_getdcbx(struct net_device *dev)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 return adapter->dcbx_cap;
}
