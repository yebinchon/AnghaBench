
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int flags; int features; } ;
struct TYPE_5__ {int (* update_mc_addr_list ) (struct ixgbe_hw*,struct net_device*) ;} ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ ops; } ;
struct TYPE_4__ {int user_set_promisc; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ addr_ctrl; } ;
struct ixgbe_adapter {int flags; scalar_t__ num_vfs; struct ixgbe_hw hw; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int IXGBE_FCTRL ;
 int IXGBE_FCTRL_BAM ;
 int IXGBE_FCTRL_DPF ;
 int IXGBE_FCTRL_MPE ;
 int IXGBE_FCTRL_PMCF ;
 int IXGBE_FCTRL_UPE ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_FLAG_VMDQ_ENABLED ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VMOLR (int ) ;
 int IXGBE_VMOLR_AUPE ;
 int IXGBE_VMOLR_BAM ;
 int IXGBE_VMOLR_MPE ;
 int IXGBE_VMOLR_ROMPE ;
 int IXGBE_VMOLR_ROPE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int NETIF_F_HW_VLAN_RX ;
 int VMDQ_P (int ) ;
 scalar_t__ ixgbe_mac_82598EB ;
 int ixgbe_restore_vf_multicasts (struct ixgbe_adapter*) ;
 int ixgbe_vlan_filter_disable (struct ixgbe_adapter*) ;
 int ixgbe_vlan_filter_enable (struct ixgbe_adapter*) ;
 int ixgbe_vlan_strip_disable (struct ixgbe_adapter*) ;
 int ixgbe_vlan_strip_enable (struct ixgbe_adapter*) ;
 int ixgbe_write_uc_addr_list (struct net_device*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,struct net_device*) ;

void ixgbe_set_rx_mode(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 fctrl, vmolr = IXGBE_VMOLR_BAM | IXGBE_VMOLR_AUPE;
 int count;



 fctrl = IXGBE_READ_REG(hw, IXGBE_FCTRL);


 fctrl |= IXGBE_FCTRL_BAM;
 fctrl |= IXGBE_FCTRL_DPF;
 fctrl |= IXGBE_FCTRL_PMCF;


 fctrl &= ~(IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);

 if (netdev->flags & IFF_PROMISC) {
  hw->addr_ctrl.user_set_promisc = 1;
  fctrl |= (IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);
  vmolr |= (IXGBE_VMOLR_ROPE | IXGBE_VMOLR_MPE);




  if (!(adapter->flags & (IXGBE_FLAG_VMDQ_ENABLED |
     IXGBE_FLAG_SRIOV_ENABLED)))
   ixgbe_vlan_filter_disable(adapter);
  else
   ixgbe_vlan_filter_enable(adapter);
 } else {
  if (netdev->flags & IFF_ALLMULTI) {
   fctrl |= IXGBE_FCTRL_MPE;
   vmolr |= IXGBE_VMOLR_MPE;
  }
  ixgbe_vlan_filter_enable(adapter);
  hw->addr_ctrl.user_set_promisc = 0;
 }






 count = ixgbe_write_uc_addr_list(netdev);
 if (count < 0) {
  fctrl |= IXGBE_FCTRL_UPE;
  vmolr |= IXGBE_VMOLR_ROPE;
 }





 hw->mac.ops.update_mc_addr_list(hw, netdev);
 vmolr |= IXGBE_VMOLR_ROMPE;

 if (adapter->num_vfs)
  ixgbe_restore_vf_multicasts(adapter);

 if (hw->mac.type != ixgbe_mac_82598EB) {
  vmolr |= IXGBE_READ_REG(hw, IXGBE_VMOLR(VMDQ_P(0))) &
    ~(IXGBE_VMOLR_MPE | IXGBE_VMOLR_ROMPE |
      IXGBE_VMOLR_ROPE);
  IXGBE_WRITE_REG(hw, IXGBE_VMOLR(VMDQ_P(0)), vmolr);
 }

 IXGBE_WRITE_REG(hw, IXGBE_FCTRL, fctrl);

 if (netdev->features & NETIF_F_HW_VLAN_RX)
  ixgbe_vlan_strip_enable(adapter);
 else
  ixgbe_vlan_strip_disable(adapter);
}
