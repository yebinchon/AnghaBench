
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_mac_info {int get_link_status; } ;
struct TYPE_2__ {struct e1000_mac_info mac; } ;
struct igb_adapter {TYPE_1__ hw; } ;


 int igb_has_link (struct igb_adapter*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static u32 igb_get_link(struct net_device *netdev)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_mac_info *mac = &adapter->hw.mac;







 if (!netif_carrier_ok(netdev))
  mac->get_link_status = 1;

 return igb_has_link(adapter);
}
