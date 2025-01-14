
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct e1000_adapter {int flags; } ;


 int FLAG_RX_CSUM_ENABLED ;
 int e1000e_reinit_locked (struct e1000_adapter*) ;
 int e1000e_reset (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int e1000_set_rx_csum(struct net_device *netdev, u32 data)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 if (data)
  adapter->flags |= FLAG_RX_CSUM_ENABLED;
 else
  adapter->flags &= ~FLAG_RX_CSUM_ENABLED;

 if (netif_running(netdev))
  e1000e_reinit_locked(adapter);
 else
  e1000e_reset(adapter);
 return 0;
}
