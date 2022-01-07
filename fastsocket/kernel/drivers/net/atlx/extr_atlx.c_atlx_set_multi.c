
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;
struct atlx_hw {scalar_t__ hw_addr; } ;
struct atlx_adapter {struct atlx_hw hw; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MAC_CTRL_MC_ALL_EN ;
 int MAC_CTRL_PROMIS_EN ;
 scalar_t__ REG_MAC_CTRL ;
 scalar_t__ REG_RX_HASH_TABLE ;
 int atlx_hash_mc_addr (struct atlx_hw*,int ) ;
 int atlx_hash_set (struct atlx_hw*,int) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 struct atlx_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atlx_set_multi(struct net_device *netdev)
{
 struct atlx_adapter *adapter = netdev_priv(netdev);
 struct atlx_hw *hw = &adapter->hw;
 struct dev_mc_list *mc_ptr;
 u32 rctl;
 u32 hash_value;


 rctl = ioread32(hw->hw_addr + REG_MAC_CTRL);
 if (netdev->flags & IFF_PROMISC)
  rctl |= MAC_CTRL_PROMIS_EN;
 else if (netdev->flags & IFF_ALLMULTI) {
  rctl |= MAC_CTRL_MC_ALL_EN;
  rctl &= ~MAC_CTRL_PROMIS_EN;
 } else
  rctl &= ~(MAC_CTRL_PROMIS_EN | MAC_CTRL_MC_ALL_EN);

 iowrite32(rctl, hw->hw_addr + REG_MAC_CTRL);


 iowrite32(0, hw->hw_addr + REG_RX_HASH_TABLE);
 iowrite32(0, (hw->hw_addr + REG_RX_HASH_TABLE) + (1 << 2));


 for (mc_ptr = netdev->mc_list; mc_ptr; mc_ptr = mc_ptr->next) {
  hash_value = atlx_hash_mc_addr(hw, mc_ptr->dmi_addr);
  atlx_hash_set(hw, hash_value);
 }
}
