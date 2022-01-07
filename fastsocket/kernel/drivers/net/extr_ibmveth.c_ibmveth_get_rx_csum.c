
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ibmveth_adapter {int rx_csum; } ;


 struct ibmveth_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ibmveth_get_rx_csum(struct net_device *dev)
{
 struct ibmveth_adapter *adapter = netdev_priv(dev);
 return adapter->rx_csum;
}
