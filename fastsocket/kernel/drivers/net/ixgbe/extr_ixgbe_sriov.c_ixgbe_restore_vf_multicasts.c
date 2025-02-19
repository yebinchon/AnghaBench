
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vf_data_storage {int num_vf_mc_hashes; int* vf_mc_hashes; } ;
struct TYPE_2__ {int mta_in_use; } ;
struct ixgbe_hw {TYPE_1__ addr_ctrl; } ;
struct ixgbe_adapter {int num_vfs; struct vf_data_storage* vfinfo; struct ixgbe_hw hw; } ;


 int IXGBE_MTA (int) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_restore_vf_macvlans (struct ixgbe_adapter*) ;

void ixgbe_restore_vf_multicasts(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct vf_data_storage *vfinfo;
 int i, j;
 u32 vector_bit;
 u32 vector_reg;
 u32 mta_reg;

 for (i = 0; i < adapter->num_vfs; i++) {
  vfinfo = &adapter->vfinfo[i];
  for (j = 0; j < vfinfo->num_vf_mc_hashes; j++) {
   hw->addr_ctrl.mta_in_use++;
   vector_reg = (vfinfo->vf_mc_hashes[j] >> 5) & 0x7F;
   vector_bit = vfinfo->vf_mc_hashes[j] & 0x1F;
   mta_reg = IXGBE_READ_REG(hw, IXGBE_MTA(vector_reg));
   mta_reg |= (1 << vector_bit);
   IXGBE_WRITE_REG(hw, IXGBE_MTA(vector_reg), mta_reg);
  }
 }


 ixgbe_restore_vf_macvlans(adapter);
}
