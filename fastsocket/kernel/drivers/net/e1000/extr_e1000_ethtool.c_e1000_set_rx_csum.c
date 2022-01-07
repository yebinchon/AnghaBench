
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_adapter {int rx_csum; } ;


 int e1000_reinit_locked (struct e1000_adapter*) ;
 int e1000_reset (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int e1000_set_rx_csum(struct net_device *netdev, u32 data)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 adapter->rx_csum = data;

 if (netif_running(netdev))
  e1000_reinit_locked(adapter);
 else
  e1000_reset(adapter);
 return 0;
}
