
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmxnet3_adapter {int rxcsum; } ;
struct net_device {int dummy; } ;


 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32
vmxnet3_get_rx_csum(struct net_device *netdev)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 return adapter->rxcsum;
}
