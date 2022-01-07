
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_addr; } ;
struct cmac {int dummy; } ;
struct port_info {int link_config; int phy; TYPE_1__ iscsic; struct cmac mac; } ;
struct net_device {int dev_addr; int mtu; } ;


 int LAN_MAC_IDX ;
 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int MAX_MAC_IDX ;
 int SAN_MAC_IDX ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t3_link_start (int *,struct cmac*,int *) ;
 int t3_mac_enable (struct cmac*,int) ;
 int t3_mac_reset (struct cmac*) ;
 int t3_mac_set_address (struct cmac*,int ,int ) ;
 int t3_mac_set_mtu (struct cmac*,int ) ;
 int t3_mac_set_num_ucast (struct cmac*,int ) ;
 int t3_mac_set_rx_mode (struct cmac*,struct net_device*) ;

__attribute__((used)) static void link_start(struct net_device *dev)
{
 struct port_info *pi = netdev_priv(dev);
 struct cmac *mac = &pi->mac;

 t3_mac_reset(mac);
 t3_mac_set_num_ucast(mac, MAX_MAC_IDX);
 t3_mac_set_mtu(mac, dev->mtu);
 t3_mac_set_address(mac, LAN_MAC_IDX, dev->dev_addr);
 t3_mac_set_address(mac, SAN_MAC_IDX, pi->iscsic.mac_addr);
 t3_mac_set_rx_mode(mac, dev);
 t3_link_start(&pi->phy, mac, &pi->link_config);
 t3_mac_enable(mac, MAC_DIRECTION_RX | MAC_DIRECTION_TX);
}
