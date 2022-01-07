
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ vlan_id; int status; } ;
struct e1000_hw {TYPE_1__ mng_cookie; } ;
struct e1000_adapter {scalar_t__ mng_vlan_id; scalar_t__ vlgrp; struct net_device* netdev; struct e1000_hw hw; } ;


 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT ;
 scalar_t__ E1000_MNG_VLAN_NONE ;
 int e1000_vlan_rx_add_vid (struct net_device*,scalar_t__) ;
 int e1000_vlan_rx_kill_vid (struct net_device*,scalar_t__) ;
 int vlan_group_get_device (scalar_t__,scalar_t__) ;

__attribute__((used)) static void e1000_update_mng_vlan(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 u16 vid = hw->mng_cookie.vlan_id;
 u16 old_vid = adapter->mng_vlan_id;
 if (adapter->vlgrp) {
  if (!vlan_group_get_device(adapter->vlgrp, vid)) {
   if (hw->mng_cookie.status &
    E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT) {
    e1000_vlan_rx_add_vid(netdev, vid);
    adapter->mng_vlan_id = vid;
   } else
    adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;

   if ((old_vid != (u16)E1000_MNG_VLAN_NONE) &&
     (vid != old_vid) &&
       !vlan_group_get_device(adapter->vlgrp, old_vid))
    e1000_vlan_rx_kill_vid(netdev, old_vid);
  } else
   adapter->mng_vlan_id = vid;
 }
}
