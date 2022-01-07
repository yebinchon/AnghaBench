
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct net_device {int dummy; } ;
struct be_adapter {int rx_csum; } ;


 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_set_rx_csum(struct net_device *netdev, uint32_t data)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 if (data)
  adapter->rx_csum = 1;
 else
  adapter->rx_csum = 0;

 return 0;
}
