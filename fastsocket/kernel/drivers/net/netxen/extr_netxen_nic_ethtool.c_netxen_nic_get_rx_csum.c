
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netxen_adapter {int rx_csum; } ;
struct net_device {int dummy; } ;


 struct netxen_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 netxen_nic_get_rx_csum(struct net_device *dev)
{
 struct netxen_adapter *adapter = netdev_priv(dev);
 return adapter->rx_csum;
}
