
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int vfs_allocated_count; struct e1000_hw hw; } ;


 int E1000_DTXCTL ;
 int E1000_DTXCTL_VLAN_ADDED ;
 int E1000_RPLOLR ;
 int E1000_RPLOLR_STRVLAN ;







 int igb_vmdq_set_anti_spoofing_pf (struct e1000_hw*,int,int ) ;
 int igb_vmdq_set_loopback_pf (struct e1000_hw*,int) ;
 int igb_vmdq_set_replication_pf (struct e1000_hw*,int) ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static void igb_vmm_control(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 reg;

 switch (hw->mac.type) {
 case 134:
 case 131:
 case 130:
 case 128:
 default:

  return;
 case 133:

  reg = rd32(E1000_DTXCTL);
  reg |= E1000_DTXCTL_VLAN_ADDED;
  wr32(E1000_DTXCTL, reg);
 case 132:

  reg = rd32(E1000_RPLOLR);
  reg |= E1000_RPLOLR_STRVLAN;
  wr32(E1000_RPLOLR, reg);
 case 129:

  break;
 }

 if (adapter->vfs_allocated_count) {
  igb_vmdq_set_loopback_pf(hw, 1);
  igb_vmdq_set_replication_pf(hw, 1);
  igb_vmdq_set_anti_spoofing_pf(hw, 1,
           adapter->vfs_allocated_count);
 } else {
  igb_vmdq_set_loopback_pf(hw, 0);
  igb_vmdq_set_replication_pf(hw, 0);
 }
}
