
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;
struct ibmveth_adapter {int rx_csum; } ;


 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ibmveth_set_rx_csum_flags(struct net_device *dev, u32 data)
{
 struct ibmveth_adapter *adapter = netdev_priv(dev);

 if (data) {
  adapter->rx_csum = 1;
 } else {
  adapter->rx_csum = 0;
  dev->features &= ~NETIF_F_IP_CSUM;
  dev->features &= ~NETIF_F_IPV6_CSUM;
 }
}
