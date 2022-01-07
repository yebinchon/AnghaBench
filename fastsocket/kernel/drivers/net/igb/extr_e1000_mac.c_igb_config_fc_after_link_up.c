
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_6__ {scalar_t__ (* get_speed_and_duplex ) (struct e1000_hw*,scalar_t__*,scalar_t__*) ;} ;
struct e1000_mac_info {scalar_t__ autoneg; TYPE_2__ ops; scalar_t__ autoneg_failed; } ;
struct TYPE_8__ {scalar_t__ requested_mode; void* current_mode; scalar_t__ strict_ieee; } ;
struct TYPE_5__ {scalar_t__ (* read_reg ) (struct e1000_hw*,int ,scalar_t__*) ;} ;
struct TYPE_7__ {scalar_t__ media_type; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_4__ fc; TYPE_3__ phy; struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int E1000_PCS_ANADV ;
 int E1000_PCS_LCTL ;
 int E1000_PCS_LCTL_FORCE_FCTRL ;
 int E1000_PCS_LPAB ;
 int E1000_PCS_LSTAT ;
 int E1000_PCS_LSTS_AN_COMPLETE ;
 int E1000_TXCW_ASM_DIR ;
 int E1000_TXCW_PAUSE ;
 scalar_t__ HALF_DUPLEX ;
 scalar_t__ MII_SR_AUTONEG_COMPLETE ;
 scalar_t__ NWAY_AR_ASM_DIR ;
 scalar_t__ NWAY_AR_PAUSE ;
 scalar_t__ NWAY_LPAR_ASM_DIR ;
 scalar_t__ NWAY_LPAR_PAUSE ;
 int PHY_AUTONEG_ADV ;
 int PHY_LP_ABILITY ;
 int PHY_STATUS ;
 scalar_t__ e1000_fc_full ;
 scalar_t__ e1000_fc_none ;
 void* e1000_fc_rx_pause ;
 scalar_t__ e1000_fc_tx_pause ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_media_type_internal_serdes ;
 int hw_dbg (char*) ;
 scalar_t__ igb_force_mac_fc (struct e1000_hw*) ;
 int rd32 (int ) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ stub5 (struct e1000_hw*,scalar_t__*,scalar_t__*) ;
 int wr32 (int ,int) ;

s32 igb_config_fc_after_link_up(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val = 0;
 u32 pcs_status_reg, pcs_adv_reg, pcs_lp_ability_reg, pcs_ctrl_reg;
 u16 mii_status_reg, mii_nway_adv_reg, mii_nway_lp_ability_reg;
 u16 speed, duplex;





 if (mac->autoneg_failed) {
  if (hw->phy.media_type == e1000_media_type_internal_serdes)
   ret_val = igb_force_mac_fc(hw);
 } else {
  if (hw->phy.media_type == e1000_media_type_copper)
   ret_val = igb_force_mac_fc(hw);
 }

 if (ret_val) {
  hw_dbg("Error forcing flow control settings\n");
  goto out;
 }






 if ((hw->phy.media_type == e1000_media_type_copper) && mac->autoneg) {




  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS,
         &mii_status_reg);
  if (ret_val)
   goto out;
  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS,
         &mii_status_reg);
  if (ret_val)
   goto out;

  if (!(mii_status_reg & MII_SR_AUTONEG_COMPLETE)) {
   hw_dbg("Copper PHY and Auto Neg "
     "has not completed.\n");
   goto out;
  }







  ret_val = hw->phy.ops.read_reg(hw, PHY_AUTONEG_ADV,
         &mii_nway_adv_reg);
  if (ret_val)
   goto out;
  ret_val = hw->phy.ops.read_reg(hw, PHY_LP_ABILITY,
         &mii_nway_lp_ability_reg);
  if (ret_val)
   goto out;
  if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
      (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE)) {






   if (hw->fc.requested_mode == e1000_fc_full) {
    hw->fc.current_mode = e1000_fc_full;
    hw_dbg("Flow Control = FULL.\r\n");
   } else {
    hw->fc.current_mode = e1000_fc_rx_pause;
    hw_dbg("Flow Control = "
           "RX PAUSE frames only.\r\n");
   }
  }







  else if (!(mii_nway_adv_reg & NWAY_AR_PAUSE) &&
     (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
     (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
     (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR)) {
   hw->fc.current_mode = e1000_fc_tx_pause;
   hw_dbg("Flow Control = TX PAUSE frames only.\r\n");
  }







  else if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
    (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
    !(mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
    (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR)) {
   hw->fc.current_mode = e1000_fc_rx_pause;
   hw_dbg("Flow Control = RX PAUSE frames only.\r\n");
  }
  else if ((hw->fc.requested_mode == e1000_fc_none) ||
    (hw->fc.requested_mode == e1000_fc_tx_pause) ||
    (hw->fc.strict_ieee)) {
   hw->fc.current_mode = e1000_fc_none;
   hw_dbg("Flow Control = NONE.\r\n");
  } else {
   hw->fc.current_mode = e1000_fc_rx_pause;
   hw_dbg("Flow Control = RX PAUSE frames only.\r\n");
  }





  ret_val = hw->mac.ops.get_speed_and_duplex(hw, &speed, &duplex);
  if (ret_val) {
   hw_dbg("Error getting link speed and duplex\n");
   goto out;
  }

  if (duplex == HALF_DUPLEX)
   hw->fc.current_mode = e1000_fc_none;




  ret_val = igb_force_mac_fc(hw);
  if (ret_val) {
   hw_dbg("Error forcing flow control settings\n");
   goto out;
  }
 }





 if ((hw->phy.media_type == e1000_media_type_internal_serdes)
  && mac->autoneg) {



  pcs_status_reg = rd32(E1000_PCS_LSTAT);

  if (!(pcs_status_reg & E1000_PCS_LSTS_AN_COMPLETE)) {
   hw_dbg("PCS Auto Neg has not completed.\n");
   return ret_val;
  }







  pcs_adv_reg = rd32(E1000_PCS_ANADV);
  pcs_lp_ability_reg = rd32(E1000_PCS_LPAB);
  if ((pcs_adv_reg & E1000_TXCW_PAUSE) &&
      (pcs_lp_ability_reg & E1000_TXCW_PAUSE)) {






   if (hw->fc.requested_mode == e1000_fc_full) {
    hw->fc.current_mode = e1000_fc_full;
    hw_dbg("Flow Control = FULL.\n");
   } else {
    hw->fc.current_mode = e1000_fc_rx_pause;
    hw_dbg("Flow Control = Rx PAUSE frames only.\n");
   }
  }







  else if (!(pcs_adv_reg & E1000_TXCW_PAUSE) &&
     (pcs_adv_reg & E1000_TXCW_ASM_DIR) &&
     (pcs_lp_ability_reg & E1000_TXCW_PAUSE) &&
     (pcs_lp_ability_reg & E1000_TXCW_ASM_DIR)) {
   hw->fc.current_mode = e1000_fc_tx_pause;
   hw_dbg("Flow Control = Tx PAUSE frames only.\n");
  }







  else if ((pcs_adv_reg & E1000_TXCW_PAUSE) &&
    (pcs_adv_reg & E1000_TXCW_ASM_DIR) &&
    !(pcs_lp_ability_reg & E1000_TXCW_PAUSE) &&
    (pcs_lp_ability_reg & E1000_TXCW_ASM_DIR)) {
   hw->fc.current_mode = e1000_fc_rx_pause;
   hw_dbg("Flow Control = Rx PAUSE frames only.\n");
  } else {



   hw->fc.current_mode = e1000_fc_none;
   hw_dbg("Flow Control = NONE.\n");
  }




  pcs_ctrl_reg = rd32(E1000_PCS_LCTL);
  pcs_ctrl_reg |= E1000_PCS_LCTL_FORCE_FCTRL;
  wr32(E1000_PCS_LCTL, pcs_ctrl_reg);

  ret_val = igb_force_mac_fc(hw);
  if (ret_val) {
   hw_dbg("Error forcing flow control settings\n");
   return ret_val;
  }
 }

out:
 return ret_val;
}
