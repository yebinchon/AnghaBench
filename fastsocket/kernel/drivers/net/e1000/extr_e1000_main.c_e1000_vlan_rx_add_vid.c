
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int status; } ;
struct e1000_hw {TYPE_1__ mng_cookie; } ;
struct e1000_adapter {int mng_vlan_id; struct e1000_hw hw; } ;


 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT ;
 int E1000_READ_REG_ARRAY (struct e1000_hw*,int ,int) ;
 int VFTA ;
 int e1000_write_vfta (struct e1000_hw*,int,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void e1000_vlan_rx_add_vid(struct net_device *netdev, u16 vid)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 vfta, index;

 if ((hw->mng_cookie.status &
      E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT) &&
     (vid == adapter->mng_vlan_id))
  return;

 index = (vid >> 5) & 0x7F;
 vfta = E1000_READ_REG_ARRAY(hw, VFTA, index);
 vfta |= (1 << (vid & 0x1F));
 e1000_write_vfta(hw, index, vfta);
}
