
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ibmveth_adapter {scalar_t__ rx_csum; } ;


 int ibmveth_set_csum_offload (struct net_device*,scalar_t__,int ) ;
 int ibmveth_set_rx_csum_flags ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ibmveth_set_rx_csum(struct net_device *dev, u32 data)
{
 struct ibmveth_adapter *adapter = netdev_priv(dev);

 if ((data && adapter->rx_csum) || (!data && !adapter->rx_csum))
  return 0;

 return ibmveth_set_csum_offload(dev, data, ibmveth_set_rx_csum_flags);
}
