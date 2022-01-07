
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct vf_data_storage {int vf_api; scalar_t__ num_vf_mc_hashes; int pf_vlan; scalar_t__ pf_qos; } ;
struct TYPE_3__ {int (* clear_rar ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_4__ {size_t num_rar_entries; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct vf_data_storage* vfinfo; int netdev; scalar_t__ default_up; struct ixgbe_hw hw; } ;


 int ixgbe_clear_vmvir (struct ixgbe_adapter*,size_t) ;
 int ixgbe_mbox_api_10 ;
 int ixgbe_set_rx_mode (int ) ;
 int ixgbe_set_vf_vlan (struct ixgbe_adapter*,int,int ,size_t) ;
 int ixgbe_set_vmolr (struct ixgbe_hw*,size_t,int) ;
 int ixgbe_set_vmvir (struct ixgbe_adapter*,int ,scalar_t__,size_t) ;
 int netdev_get_num_tc (int ) ;
 int stub1 (struct ixgbe_hw*,int) ;

__attribute__((used)) static inline void ixgbe_vf_reset_event(struct ixgbe_adapter *adapter, u32 vf)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];
 int rar_entry = hw->mac.num_rar_entries - (vf + 1);
 u8 num_tcs = netdev_get_num_tc(adapter->netdev);


 ixgbe_set_vf_vlan(adapter, 1, vfinfo->pf_vlan, vf);


 ixgbe_set_vmolr(hw, vf, !vfinfo->pf_vlan);


 if (!vfinfo->pf_vlan && !vfinfo->pf_qos && !num_tcs) {
  ixgbe_clear_vmvir(adapter, vf);
 } else {
  if (vfinfo->pf_qos || !num_tcs)
   ixgbe_set_vmvir(adapter, vfinfo->pf_vlan,
     vfinfo->pf_qos, vf);
  else
   ixgbe_set_vmvir(adapter, vfinfo->pf_vlan,
     adapter->default_up, vf);
 }


 adapter->vfinfo[vf].num_vf_mc_hashes = 0;


 ixgbe_set_rx_mode(adapter->netdev);

 hw->mac.ops.clear_rar(hw, rar_entry);


 adapter->vfinfo[vf].vf_api = ixgbe_mbox_api_10;
}
