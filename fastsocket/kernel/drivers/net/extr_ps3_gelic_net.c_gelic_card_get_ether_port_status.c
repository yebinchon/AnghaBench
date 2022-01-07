
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct gelic_card {int ether_port_status; struct net_device** netdev; } ;


 int GELIC_LV1_ETHER_LINK_UP ;
 int GELIC_LV1_GET_ETH_PORT_STATUS ;
 int GELIC_LV1_VLAN_TX_ETHERNET ;
 size_t GELIC_PORT_ETHERNET ;
 int bus_id (struct gelic_card*) ;
 int dev_id (struct gelic_card*) ;
 int lv1_net_control (int ,int ,int ,int ,int ,int ,int*,int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static void gelic_card_get_ether_port_status(struct gelic_card *card,
          int inform)
{
 u64 v2;
 struct net_device *ether_netdev;

 lv1_net_control(bus_id(card), dev_id(card),
   GELIC_LV1_GET_ETH_PORT_STATUS,
   GELIC_LV1_VLAN_TX_ETHERNET, 0, 0,
   &card->ether_port_status, &v2);

 if (inform) {
  ether_netdev = card->netdev[GELIC_PORT_ETHERNET];
  if (card->ether_port_status & GELIC_LV1_ETHER_LINK_UP)
   netif_carrier_on(ether_netdev);
  else
   netif_carrier_off(ether_netdev);
 }
}
