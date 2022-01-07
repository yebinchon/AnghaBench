
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vm_pool; int flow_type; int flex_bytes; int * dst_ip; int * src_ip; int vlan_id; int src_port; int dst_port; scalar_t__ bkt_hash; } ;
union ixgbe_atr_input {TYPE_1__ formatted; } ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;



 int IXGBE_ERR_CONFIG ;
 int IXGBE_FDIRDIP4M ;
 int IXGBE_FDIRM ;
 int IXGBE_FDIRM_DIPv6 ;
 int IXGBE_FDIRM_FLEX ;
 int IXGBE_FDIRM_L4P ;
 int IXGBE_FDIRM_POOL ;
 int IXGBE_FDIRM_VLANID ;
 int IXGBE_FDIRM_VLANP ;
 int IXGBE_FDIRSIP4M ;
 int IXGBE_FDIRTCPM ;
 int IXGBE_FDIRUDPM ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int IXGBE_WRITE_REG_BE32 (struct ixgbe_hw*,int ,int ) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int ixgbe_get_fdirtcpm_82599 (union ixgbe_atr_input*) ;
 int ntohs (int ) ;

s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
        union ixgbe_atr_input *input_mask)
{

 u32 fdirm = IXGBE_FDIRM_DIPv6;
 u32 fdirtcpm;
 if (input_mask->formatted.bkt_hash)
  hw_dbg(hw, " bucket hash should always be 0 in mask\n");


 switch (input_mask->formatted.vm_pool & 0x7F) {
 case 0x0:
  fdirm |= IXGBE_FDIRM_POOL;
 case 0x7F:
  break;
 default:
  hw_dbg(hw, " Error on vm pool mask\n");
  return IXGBE_ERR_CONFIG;
 }

 switch (input_mask->formatted.flow_type & 128) {
 case 0x0:
  fdirm |= IXGBE_FDIRM_L4P;
  if (input_mask->formatted.dst_port ||
      input_mask->formatted.src_port) {
   hw_dbg(hw, " Error on src/dst port mask\n");
   return IXGBE_ERR_CONFIG;
  }
 case 128:
  break;
 default:
  hw_dbg(hw, " Error on flow type mask\n");
  return IXGBE_ERR_CONFIG;
 }

 switch (ntohs(input_mask->formatted.vlan_id) & 0xEFFF) {
 case 0x0000:

  fdirm |= IXGBE_FDIRM_VLANID;
 case 0x0FFF:

  fdirm |= IXGBE_FDIRM_VLANP;
  break;
 case 0xE000:

  fdirm |= IXGBE_FDIRM_VLANID;
 case 0xEFFF:

  break;
 default:
  hw_dbg(hw, " Error on VLAN mask\n");
  return IXGBE_ERR_CONFIG;
 }

 switch (input_mask->formatted.flex_bytes & 0xFFFF) {
 case 0x0000:

  fdirm |= IXGBE_FDIRM_FLEX;
 case 0xFFFF:
  break;
 default:
  hw_dbg(hw, " Error on flexible byte mask\n");
  return IXGBE_ERR_CONFIG;
 }


 IXGBE_WRITE_REG(hw, IXGBE_FDIRM, fdirm);


 fdirtcpm = ixgbe_get_fdirtcpm_82599(input_mask);


 IXGBE_WRITE_REG(hw, IXGBE_FDIRTCPM, ~fdirtcpm);
 IXGBE_WRITE_REG(hw, IXGBE_FDIRUDPM, ~fdirtcpm);


 IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRSIP4M,
        ~input_mask->formatted.src_ip[0]);
 IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRDIP4M,
        ~input_mask->formatted.dst_ip[0]);

 return 0;
}
