
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int rx_csum; } ;
struct net_device {int dummy; } ;


 struct qlcnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 qlcnic_get_rx_csum(struct net_device *dev)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);
 return adapter->rx_csum;
}
