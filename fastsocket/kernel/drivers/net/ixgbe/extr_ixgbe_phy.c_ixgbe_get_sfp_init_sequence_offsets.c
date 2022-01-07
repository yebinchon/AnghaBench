
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_5__ {scalar_t__ (* read ) (struct ixgbe_hw*,scalar_t__,scalar_t__*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ sfp_type; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_3__ eeprom; TYPE_1__ phy; } ;
typedef int s32 ;


 scalar_t__ IXGBE_DEV_ID_82598_SR_DUAL_PORT_EM ;
 int IXGBE_ERR_PHY ;
 int IXGBE_ERR_SFP_NOT_PRESENT ;
 int IXGBE_ERR_SFP_NOT_SUPPORTED ;
 int IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT ;
 scalar_t__ IXGBE_PHY_INIT_END_NL ;
 scalar_t__ IXGBE_PHY_INIT_OFFSET_NL ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_sfp_type_1g_cu_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_cu_core1 ;
 scalar_t__ ixgbe_sfp_type_1g_lx_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_lx_core1 ;
 scalar_t__ ixgbe_sfp_type_1g_sx_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_sx_core1 ;
 scalar_t__ ixgbe_sfp_type_da_act_lmt_core0 ;
 scalar_t__ ixgbe_sfp_type_da_act_lmt_core1 ;
 scalar_t__ ixgbe_sfp_type_da_cu ;
 scalar_t__ ixgbe_sfp_type_not_present ;
 scalar_t__ ixgbe_sfp_type_srlr_core0 ;
 scalar_t__ ixgbe_sfp_type_srlr_core1 ;
 scalar_t__ ixgbe_sfp_type_unknown ;
 scalar_t__ stub1 (struct ixgbe_hw*,scalar_t__,scalar_t__*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,scalar_t__,scalar_t__*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,scalar_t__,scalar_t__*) ;
 scalar_t__ stub4 (struct ixgbe_hw*,scalar_t__,scalar_t__*) ;

s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
                                        u16 *list_offset,
                                        u16 *data_offset)
{
 u16 sfp_id;
 u16 sfp_type = hw->phy.sfp_type;

 if (hw->phy.sfp_type == ixgbe_sfp_type_unknown)
  return IXGBE_ERR_SFP_NOT_SUPPORTED;

 if (hw->phy.sfp_type == ixgbe_sfp_type_not_present)
  return IXGBE_ERR_SFP_NOT_PRESENT;

 if ((hw->device_id == IXGBE_DEV_ID_82598_SR_DUAL_PORT_EM) &&
     (hw->phy.sfp_type == ixgbe_sfp_type_da_cu))
  return IXGBE_ERR_SFP_NOT_SUPPORTED;





 if (sfp_type == ixgbe_sfp_type_da_act_lmt_core0 ||
     sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
     sfp_type == ixgbe_sfp_type_1g_cu_core0 ||
     sfp_type == ixgbe_sfp_type_1g_sx_core0)
  sfp_type = ixgbe_sfp_type_srlr_core0;
 else if (sfp_type == ixgbe_sfp_type_da_act_lmt_core1 ||
   sfp_type == ixgbe_sfp_type_1g_lx_core1 ||
   sfp_type == ixgbe_sfp_type_1g_cu_core1 ||
   sfp_type == ixgbe_sfp_type_1g_sx_core1)
  sfp_type = ixgbe_sfp_type_srlr_core1;


 hw->eeprom.ops.read(hw, IXGBE_PHY_INIT_OFFSET_NL, list_offset);

 if ((!*list_offset) || (*list_offset == 0xFFFF))
  return IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT;


 (*list_offset)++;





 hw->eeprom.ops.read(hw, *list_offset, &sfp_id);

 while (sfp_id != IXGBE_PHY_INIT_END_NL) {
  if (sfp_id == sfp_type) {
   (*list_offset)++;
   hw->eeprom.ops.read(hw, *list_offset, data_offset);
   if ((!*data_offset) || (*data_offset == 0xFFFF)) {
    hw_dbg(hw, "SFP+ module not supported\n");
    return IXGBE_ERR_SFP_NOT_SUPPORTED;
   } else {
    break;
   }
  } else {
   (*list_offset) += 2;
   if (hw->eeprom.ops.read(hw, *list_offset, &sfp_id))
    return IXGBE_ERR_PHY;
  }
 }

 if (sfp_id == IXGBE_PHY_INIT_END_NL) {
  hw_dbg(hw, "No matching SFP+ module found\n");
  return IXGBE_ERR_SFP_NOT_SUPPORTED;
 }

 return 0;
}
