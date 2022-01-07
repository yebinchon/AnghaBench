
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct be_adapter {int flags; struct net_device* netdev; } ;


 int BE_FLAGS_LINK_STATUS_INIT ;
 int LINK_STATUS_MASK ;
 int LINK_UP ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

void be_link_status_update(struct be_adapter *adapter, u8 link_status)
{
 struct net_device *netdev = adapter->netdev;

 if (!(adapter->flags & BE_FLAGS_LINK_STATUS_INIT)) {
  netif_carrier_off(netdev);
  adapter->flags |= BE_FLAGS_LINK_STATUS_INIT;
 }

 if ((link_status & LINK_STATUS_MASK) == LINK_UP)
  netif_carrier_on(netdev);
 else
  netif_carrier_off(netdev);
}
