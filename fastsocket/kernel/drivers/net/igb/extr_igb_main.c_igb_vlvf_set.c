
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {scalar_t__ vfs_allocated_count; TYPE_2__* vf_data; struct e1000_hw hw; } ;
typedef int s32 ;
struct TYPE_4__ {int vlans_enabled; } ;


 int E1000_VLVF (scalar_t__) ;
 scalar_t__ E1000_VLVF_ARRAY_SIZE ;
 scalar_t__ E1000_VLVF_POOLSEL_MASK ;
 scalar_t__ E1000_VLVF_POOLSEL_SHIFT ;
 scalar_t__ E1000_VLVF_VLANID_ENABLE ;
 scalar_t__ E1000_VLVF_VLANID_MASK ;
 int E1000_VMOLR (scalar_t__) ;
 scalar_t__ E1000_VMOLR_RLPML_MASK ;
 scalar_t__ e1000_82576 ;
 int igb_vfta_set (struct e1000_hw*,scalar_t__,int) ;
 scalar_t__ rd32 (int ) ;
 int wr32 (int ,scalar_t__) ;

__attribute__((used)) static s32 igb_vlvf_set(struct igb_adapter *adapter, u32 vid, bool add, u32 vf)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 reg, i;


 if (hw->mac.type < e1000_82576)
  return -1;


 if (!adapter->vfs_allocated_count)
  return -1;


 for (i = 0; i < E1000_VLVF_ARRAY_SIZE; i++) {
  reg = rd32(E1000_VLVF(i));
  if ((reg & E1000_VLVF_VLANID_ENABLE) &&
      vid == (reg & E1000_VLVF_VLANID_MASK))
   break;
 }

 if (add) {
  if (i == E1000_VLVF_ARRAY_SIZE) {




   for (i = 0; i < E1000_VLVF_ARRAY_SIZE; i++) {
    reg = rd32(E1000_VLVF(i));
    if (!(reg & E1000_VLVF_VLANID_ENABLE))
     break;
   }
  }
  if (i < E1000_VLVF_ARRAY_SIZE) {

   reg |= 1 << (E1000_VLVF_POOLSEL_SHIFT + vf);


   if (!(reg & E1000_VLVF_VLANID_ENABLE)) {

    igb_vfta_set(hw, vid, 1);
    reg |= E1000_VLVF_VLANID_ENABLE;
   }
   reg &= ~E1000_VLVF_VLANID_MASK;
   reg |= vid;
   wr32(E1000_VLVF(i), reg);


   if (vf >= adapter->vfs_allocated_count)
    return 0;

   if (!adapter->vf_data[vf].vlans_enabled) {
    u32 size;
    reg = rd32(E1000_VMOLR(vf));
    size = reg & E1000_VMOLR_RLPML_MASK;
    size += 4;
    reg &= ~E1000_VMOLR_RLPML_MASK;
    reg |= size;
    wr32(E1000_VMOLR(vf), reg);
   }

   adapter->vf_data[vf].vlans_enabled++;
  }
 } else {
  if (i < E1000_VLVF_ARRAY_SIZE) {

   reg &= ~(1 << (E1000_VLVF_POOLSEL_SHIFT + vf));

   if (!(reg & E1000_VLVF_POOLSEL_MASK)) {
    reg = 0;
    igb_vfta_set(hw, vid, 0);
   }
   wr32(E1000_VLVF(i), reg);


   if (vf >= adapter->vfs_allocated_count)
    return 0;

   adapter->vf_data[vf].vlans_enabled--;
   if (!adapter->vf_data[vf].vlans_enabled) {
    u32 size;
    reg = rd32(E1000_VMOLR(vf));
    size = reg & E1000_VMOLR_RLPML_MASK;
    size -= 4;
    reg &= ~E1000_VMOLR_RLPML_MASK;
    reg |= size;
    wr32(E1000_VMOLR(vf), reg);
   }
  }
 }
 return 0;
}
