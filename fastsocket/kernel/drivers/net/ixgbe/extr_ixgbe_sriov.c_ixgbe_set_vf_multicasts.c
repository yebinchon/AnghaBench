
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct vf_data_storage {int num_vf_mc_hashes; int* vf_mc_hashes; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; struct vf_data_storage* vfinfo; } ;


 int IXGBE_MAX_VF_MC_ENTRIES ;
 int IXGBE_MTA (size_t) ;
 size_t IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 size_t IXGBE_VT_MSGINFO_MASK ;
 size_t IXGBE_VT_MSGINFO_SHIFT ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,size_t) ;
 int min (int,int ) ;

__attribute__((used)) static int ixgbe_set_vf_multicasts(struct ixgbe_adapter *adapter,
       u32 *msgbuf, u32 vf)
{
 int entries = (msgbuf[0] & IXGBE_VT_MSGINFO_MASK)
         >> IXGBE_VT_MSGINFO_SHIFT;
 u16 *hash_list = (u16 *)&msgbuf[1];
 struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];
 struct ixgbe_hw *hw = &adapter->hw;
 int i;
 u32 vector_bit;
 u32 vector_reg;
 u32 mta_reg;


 entries = min(entries, IXGBE_MAX_VF_MC_ENTRIES);






 vfinfo->num_vf_mc_hashes = entries;





 for (i = 0; i < entries; i++) {
  vfinfo->vf_mc_hashes[i] = hash_list[i];
 }

 for (i = 0; i < vfinfo->num_vf_mc_hashes; i++) {
  vector_reg = (vfinfo->vf_mc_hashes[i] >> 5) & 0x7F;
  vector_bit = vfinfo->vf_mc_hashes[i] & 0x1F;
  mta_reg = IXGBE_READ_REG(hw, IXGBE_MTA(vector_reg));
  mta_reg |= (1 << vector_bit);
  IXGBE_WRITE_REG(hw, IXGBE_MTA(vector_reg), mta_reg);
 }

 return 0;
}
