
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct be_adapter {int rx_csum; } ;


 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 be_get_rx_csum(struct net_device *netdev)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 return adapter->rx_csum;
}
