
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {scalar_t__ media_type; scalar_t__ mac_type; int get_link_status; scalar_t__ forced_speed_duplex; int tbi_compatibility_on; scalar_t__ tbi_compatibility_en; int autoneg; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int E1000_CTRL_SWDPIN1 ;
 scalar_t__ E1000_ERR_CONFIG ;
 int E1000_ICS_LSC ;
 int E1000_RCTL_SBP ;
 int E1000_STATUS_LU ;
 scalar_t__ E1000_SUCCESS ;
 int ICR ;
 int ICS ;
 int IMC ;
 int IMS ;
 int IMS_ENABLE_MASK ;
 int MII_SR_LINK_STATUS ;
 int PHY_STATUS ;
 int RCTL ;
 int RXCW ;
 int SPEED_1000 ;
 int STATUS ;
 scalar_t__ e1000_10_full ;
 scalar_t__ e1000_10_half ;
 scalar_t__ e1000_82543 ;
 scalar_t__ e1000_82544 ;
 scalar_t__ e1000_ce4100 ;
 int e1000_check_downshift (struct e1000_hw*) ;
 int e1000_check_for_serdes_link_generic (struct e1000_hw*) ;
 int e1000_config_collision_dist (struct e1000_hw*) ;
 int e1000_config_dsp_after_link_change (struct e1000_hw*,int) ;
 scalar_t__ e1000_config_fc_after_link_up (struct e1000_hw*) ;
 scalar_t__ e1000_config_mac_to_phy (struct e1000_hw*) ;
 scalar_t__ e1000_get_speed_and_duplex (struct e1000_hw*,int*,int*) ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_media_type_fiber ;
 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000_polarity_reversal_workaround (struct e1000_hw*) ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

s32 e1000_check_for_link(struct e1000_hw *hw)
{
 u32 rxcw = 0;
 u32 ctrl;
 u32 status;
 u32 rctl;
 u32 icr;
 u32 signal = 0;
 s32 ret_val;
 u16 phy_data;

 e_dbg("e1000_check_for_link");

 ctrl = er32(CTRL);
 status = er32(STATUS);





 if ((hw->media_type == e1000_media_type_fiber) ||
     (hw->media_type == e1000_media_type_internal_serdes)) {
  rxcw = er32(RXCW);

  if (hw->media_type == e1000_media_type_fiber) {
   signal =
       (hw->mac_type >
        e1000_82544) ? E1000_CTRL_SWDPIN1 : 0;
   if (status & E1000_STATUS_LU)
    hw->get_link_status = 0;
  }
 }







 if ((hw->media_type == e1000_media_type_copper) && hw->get_link_status) {





  ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &phy_data);
  if (ret_val)
   return ret_val;
  ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &phy_data);
  if (ret_val)
   return ret_val;

  if (phy_data & MII_SR_LINK_STATUS) {
   hw->get_link_status = 0;


   e1000_check_downshift(hw);
   if ((hw->mac_type == e1000_82544
        || hw->mac_type == e1000_82543) && (!hw->autoneg)
       && (hw->forced_speed_duplex == e1000_10_full
    || hw->forced_speed_duplex == e1000_10_half)) {
    ew32(IMC, 0xffffffff);
    ret_val =
        e1000_polarity_reversal_workaround(hw);
    icr = er32(ICR);
    ew32(ICS, (icr & ~E1000_ICS_LSC));
    ew32(IMS, IMS_ENABLE_MASK);
   }

  } else {

   e1000_config_dsp_after_link_change(hw, 0);
   return 0;
  }




  if (!hw->autoneg)
   return -E1000_ERR_CONFIG;


  e1000_config_dsp_after_link_change(hw, 1);
  if ((hw->mac_type >= e1000_82544) &&
      (hw->mac_type != e1000_ce4100))
   e1000_config_collision_dist(hw);
  else {
   ret_val = e1000_config_mac_to_phy(hw);
   if (ret_val) {
    e_dbg
        ("Error configuring MAC to PHY settings\n");
    return ret_val;
   }
  }





  ret_val = e1000_config_fc_after_link_up(hw);
  if (ret_val) {
   e_dbg("Error configuring flow control\n");
   return ret_val;
  }
  if (hw->tbi_compatibility_en) {
   u16 speed, duplex;
   ret_val =
       e1000_get_speed_and_duplex(hw, &speed, &duplex);
   if (ret_val) {
    e_dbg
        ("Error getting link speed and duplex\n");
    return ret_val;
   }
   if (speed != SPEED_1000) {



    if (hw->tbi_compatibility_on) {

     rctl = er32(RCTL);
     rctl &= ~E1000_RCTL_SBP;
     ew32(RCTL, rctl);
     hw->tbi_compatibility_on = 0;
    }
   } else {





    if (!hw->tbi_compatibility_on) {
     hw->tbi_compatibility_on = 1;
     rctl = er32(RCTL);
     rctl |= E1000_RCTL_SBP;
     ew32(RCTL, rctl);
    }
   }
  }
 }

 if ((hw->media_type == e1000_media_type_fiber) ||
     (hw->media_type == e1000_media_type_internal_serdes))
  e1000_check_for_serdes_link_generic(hw);

 return E1000_SUCCESS;
}
