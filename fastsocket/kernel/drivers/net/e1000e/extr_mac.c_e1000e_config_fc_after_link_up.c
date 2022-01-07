
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ (* get_link_up_info ) (struct e1000_hw*,scalar_t__*,scalar_t__*) ;} ;
struct e1000_mac_info {scalar_t__ autoneg; TYPE_1__ ops; scalar_t__ autoneg_failed; } ;
struct TYPE_6__ {scalar_t__ requested_mode; void* current_mode; } ;
struct TYPE_5__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_3__ fc; TYPE_2__ phy; struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ADVERTISE_PAUSE_ASYM ;
 scalar_t__ ADVERTISE_PAUSE_CAP ;
 scalar_t__ BMSR_ANEGCOMPLETE ;
 int E1000_PCS_LCTL_FORCE_FCTRL ;
 int E1000_PCS_LSTS_AN_COMPLETE ;
 int E1000_TXCW_ASM_DIR ;
 int E1000_TXCW_PAUSE ;
 scalar_t__ HALF_DUPLEX ;
 scalar_t__ LPA_PAUSE_ASYM ;
 scalar_t__ LPA_PAUSE_CAP ;
 int MII_ADVERTISE ;
 int MII_BMSR ;
 int MII_LPA ;
 int PCS_ANADV ;
 int PCS_LCTL ;
 int PCS_LPAB ;
 int PCS_LSTAT ;
 scalar_t__ e1000_fc_full ;
 void* e1000_fc_none ;
 void* e1000_fc_rx_pause ;
 void* e1000_fc_tx_pause ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_media_type_fiber ;
 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000e_force_mac_fc (struct e1000_hw*) ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,scalar_t__*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*,scalar_t__*,scalar_t__*) ;

s32 e1000e_config_fc_after_link_up(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val = 0;
 u32 pcs_status_reg, pcs_adv_reg, pcs_lp_ability_reg, pcs_ctrl_reg;
 u16 mii_status_reg, mii_nway_adv_reg, mii_nway_lp_ability_reg;
 u16 speed, duplex;





 if (mac->autoneg_failed) {
  if (hw->phy.media_type == e1000_media_type_fiber ||
      hw->phy.media_type == e1000_media_type_internal_serdes)
   ret_val = e1000e_force_mac_fc(hw);
 } else {
  if (hw->phy.media_type == e1000_media_type_copper)
   ret_val = e1000e_force_mac_fc(hw);
 }

 if (ret_val) {
  e_dbg("Error forcing flow control settings\n");
  return ret_val;
 }






 if ((hw->phy.media_type == e1000_media_type_copper) && mac->autoneg) {




  ret_val = e1e_rphy(hw, MII_BMSR, &mii_status_reg);
  if (ret_val)
   return ret_val;
  ret_val = e1e_rphy(hw, MII_BMSR, &mii_status_reg);
  if (ret_val)
   return ret_val;

  if (!(mii_status_reg & BMSR_ANEGCOMPLETE)) {
   e_dbg("Copper PHY and Auto Neg has not completed.\n");
   return ret_val;
  }







  ret_val = e1e_rphy(hw, MII_ADVERTISE, &mii_nway_adv_reg);
  if (ret_val)
   return ret_val;
  ret_val = e1e_rphy(hw, MII_LPA, &mii_nway_lp_ability_reg);
  if (ret_val)
   return ret_val;
  if ((mii_nway_adv_reg & ADVERTISE_PAUSE_CAP) &&
      (mii_nway_lp_ability_reg & LPA_PAUSE_CAP)) {






   if (hw->fc.requested_mode == e1000_fc_full) {
    hw->fc.current_mode = e1000_fc_full;
    e_dbg("Flow Control = FULL.\n");
   } else {
    hw->fc.current_mode = e1000_fc_rx_pause;
    e_dbg("Flow Control = Rx PAUSE frames only.\n");
   }
  }







  else if (!(mii_nway_adv_reg & ADVERTISE_PAUSE_CAP) &&
    (mii_nway_adv_reg & ADVERTISE_PAUSE_ASYM) &&
    (mii_nway_lp_ability_reg & LPA_PAUSE_CAP) &&
    (mii_nway_lp_ability_reg & LPA_PAUSE_ASYM)) {
   hw->fc.current_mode = e1000_fc_tx_pause;
   e_dbg("Flow Control = Tx PAUSE frames only.\n");
  }







  else if ((mii_nway_adv_reg & ADVERTISE_PAUSE_CAP) &&
    (mii_nway_adv_reg & ADVERTISE_PAUSE_ASYM) &&
    !(mii_nway_lp_ability_reg & LPA_PAUSE_CAP) &&
    (mii_nway_lp_ability_reg & LPA_PAUSE_ASYM)) {
   hw->fc.current_mode = e1000_fc_rx_pause;
   e_dbg("Flow Control = Rx PAUSE frames only.\n");
  } else {



   hw->fc.current_mode = e1000_fc_none;
   e_dbg("Flow Control = NONE.\n");
  }





  ret_val = mac->ops.get_link_up_info(hw, &speed, &duplex);
  if (ret_val) {
   e_dbg("Error getting link speed and duplex\n");
   return ret_val;
  }

  if (duplex == HALF_DUPLEX)
   hw->fc.current_mode = e1000_fc_none;




  ret_val = e1000e_force_mac_fc(hw);
  if (ret_val) {
   e_dbg("Error forcing flow control settings\n");
   return ret_val;
  }
 }






 if ((hw->phy.media_type == e1000_media_type_internal_serdes) &&
     mac->autoneg) {



  pcs_status_reg = er32(PCS_LSTAT);

  if (!(pcs_status_reg & E1000_PCS_LSTS_AN_COMPLETE)) {
   e_dbg("PCS Auto Neg has not completed.\n");
   return ret_val;
  }







  pcs_adv_reg = er32(PCS_ANADV);
  pcs_lp_ability_reg = er32(PCS_LPAB);
  if ((pcs_adv_reg & E1000_TXCW_PAUSE) &&
      (pcs_lp_ability_reg & E1000_TXCW_PAUSE)) {






   if (hw->fc.requested_mode == e1000_fc_full) {
    hw->fc.current_mode = e1000_fc_full;
    e_dbg("Flow Control = FULL.\n");
   } else {
    hw->fc.current_mode = e1000_fc_rx_pause;
    e_dbg("Flow Control = Rx PAUSE frames only.\n");
   }
  }







  else if (!(pcs_adv_reg & E1000_TXCW_PAUSE) &&
    (pcs_adv_reg & E1000_TXCW_ASM_DIR) &&
    (pcs_lp_ability_reg & E1000_TXCW_PAUSE) &&
    (pcs_lp_ability_reg & E1000_TXCW_ASM_DIR)) {
   hw->fc.current_mode = e1000_fc_tx_pause;
   e_dbg("Flow Control = Tx PAUSE frames only.\n");
  }







  else if ((pcs_adv_reg & E1000_TXCW_PAUSE) &&
    (pcs_adv_reg & E1000_TXCW_ASM_DIR) &&
    !(pcs_lp_ability_reg & E1000_TXCW_PAUSE) &&
    (pcs_lp_ability_reg & E1000_TXCW_ASM_DIR)) {
   hw->fc.current_mode = e1000_fc_rx_pause;
   e_dbg("Flow Control = Rx PAUSE frames only.\n");
  } else {



   hw->fc.current_mode = e1000_fc_none;
   e_dbg("Flow Control = NONE.\n");
  }




  pcs_ctrl_reg = er32(PCS_LCTL);
  pcs_ctrl_reg |= E1000_PCS_LCTL_FORCE_FCTRL;
  ew32(PCS_LCTL, pcs_ctrl_reg);

  ret_val = e1000e_force_mac_fc(hw);
  if (ret_val) {
   e_dbg("Error forcing flow control settings\n");
   return ret_val;
  }
 }

 return 0;
}
