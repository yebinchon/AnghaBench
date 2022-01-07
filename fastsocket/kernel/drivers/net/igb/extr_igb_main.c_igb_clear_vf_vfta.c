
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {TYPE_1__* vf_data; struct e1000_hw hw; } ;
struct TYPE_2__ {scalar_t__ vlans_enabled; } ;


 int E1000_VLVF (int) ;
 int E1000_VLVF_ARRAY_SIZE ;
 int E1000_VLVF_POOLSEL_MASK ;
 int E1000_VLVF_POOLSEL_SHIFT ;
 int E1000_VLVF_VLANID_ENABLE ;
 int E1000_VLVF_VLANID_MASK ;
 int igb_vfta_set (struct e1000_hw*,int,int) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_clear_vf_vfta(struct igb_adapter *adapter, u32 vf)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 pool_mask, reg, vid;
 int i;

 pool_mask = 1 << (E1000_VLVF_POOLSEL_SHIFT + vf);


 for (i = 0; i < E1000_VLVF_ARRAY_SIZE; i++) {
  reg = rd32(E1000_VLVF(i));


  reg &= ~pool_mask;


  if (!(reg & E1000_VLVF_POOLSEL_MASK) &&
      (reg & E1000_VLVF_VLANID_ENABLE)) {
   reg = 0;
   vid = reg & E1000_VLVF_VLANID_MASK;
   igb_vfta_set(hw, vid, 0);
  }

  wr32(E1000_VLVF(i), reg);
 }

 adapter->vf_data[vf].vlans_enabled = 0;
}
