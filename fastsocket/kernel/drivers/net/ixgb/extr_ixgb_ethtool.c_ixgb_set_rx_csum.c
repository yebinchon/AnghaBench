
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgb_adapter {int rx_csum; } ;


 int ixgb_down (struct ixgb_adapter*,int) ;
 int ixgb_reset (struct ixgb_adapter*) ;
 int ixgb_set_speed_duplex (struct net_device*) ;
 int ixgb_up (struct ixgb_adapter*) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int
ixgb_set_rx_csum(struct net_device *netdev, u32 data)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);

 adapter->rx_csum = data;

 if (netif_running(netdev)) {
  ixgb_down(adapter, 1);
  ixgb_up(adapter);
  ixgb_set_speed_duplex(netdev);
 } else
  ixgb_reset(adapter);
 return 0;
}
