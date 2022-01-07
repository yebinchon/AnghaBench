
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;
struct atl1e_hw {int dummy; } ;
struct atl1e_adapter {struct atl1e_hw hw; } ;


 int AT_READ_REG (struct atl1e_hw*,int ) ;
 int AT_WRITE_REG (struct atl1e_hw*,int ,int) ;
 int AT_WRITE_REG_ARRAY (struct atl1e_hw*,int ,int,int ) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MAC_CTRL_MC_ALL_EN ;
 int MAC_CTRL_PROMIS_EN ;
 int REG_MAC_CTRL ;
 int REG_RX_HASH_TABLE ;
 int atl1e_hash_mc_addr (struct atl1e_hw*,int ) ;
 int atl1e_hash_set (struct atl1e_hw*,int) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atl1e_set_multi(struct net_device *netdev)
{
 struct atl1e_adapter *adapter = netdev_priv(netdev);
 struct atl1e_hw *hw = &adapter->hw;
 struct dev_mc_list *mc_ptr;
 u32 mac_ctrl_data = 0;
 u32 hash_value;


 mac_ctrl_data = AT_READ_REG(hw, REG_MAC_CTRL);

 if (netdev->flags & IFF_PROMISC) {
  mac_ctrl_data |= MAC_CTRL_PROMIS_EN;
 } else if (netdev->flags & IFF_ALLMULTI) {
  mac_ctrl_data |= MAC_CTRL_MC_ALL_EN;
  mac_ctrl_data &= ~MAC_CTRL_PROMIS_EN;
 } else {
  mac_ctrl_data &= ~(MAC_CTRL_PROMIS_EN | MAC_CTRL_MC_ALL_EN);
 }

 AT_WRITE_REG(hw, REG_MAC_CTRL, mac_ctrl_data);


 AT_WRITE_REG(hw, REG_RX_HASH_TABLE, 0);
 AT_WRITE_REG_ARRAY(hw, REG_RX_HASH_TABLE, 1, 0);


 for (mc_ptr = netdev->mc_list; mc_ptr; mc_ptr = mc_ptr->next) {
  hash_value = atl1e_hash_mc_addr(hw, mc_ptr->dmi_addr);
  atl1e_hash_set(hw, hash_value);
 }
}
