
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {scalar_t__ phy_type; scalar_t__ mac_type; scalar_t__ dsp_config_state; int mdix; int master_slave; scalar_t__ ffe_config_state; scalar_t__ autoneg_advertised; int original_master_slave; scalar_t__ autoneg; scalar_t__ phy_reset_disable; } ;
typedef scalar_t__ s32 ;
typedef int e1000_ms_type ;


 scalar_t__ ADVERTISE_1000_FULL ;
 int CR_1000T_MS_ENABLE ;
 int CR_1000T_MS_VALUE ;
 scalar_t__ E1000_SUCCESS ;
 int IGP01E1000_PHY_PORT_CONFIG ;
 int IGP01E1000_PHY_PORT_CTRL ;
 int IGP01E1000_PSCFR_SMART_SPEED ;
 int IGP01E1000_PSCR_AUTO_MDIX ;
 int IGP01E1000_PSCR_FORCE_MDI_MDIX ;
 int IGP_ACTIVITY_LED_ENABLE ;
 int IGP_ACTIVITY_LED_MASK ;
 int IGP_LED3_MODE ;
 int LEDCTL ;
 int PHY_1000T_CTRL ;
 scalar_t__ e1000_82541 ;
 scalar_t__ e1000_82547 ;
 scalar_t__ e1000_dsp_config_activated ;
 scalar_t__ e1000_dsp_config_disabled ;
 void* e1000_dsp_config_enabled ;
 scalar_t__ e1000_ffe_config_active ;
 scalar_t__ e1000_ffe_config_enabled ;



 scalar_t__ e1000_phy_igp ;
 scalar_t__ e1000_phy_reset (struct e1000_hw*) ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1000_set_d3_lplu_state (struct e1000_hw*,int) ;
 scalar_t__ e1000_write_phy_reg (struct e1000_hw*,int ,int) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;

__attribute__((used)) static s32 e1000_copper_link_igp_setup(struct e1000_hw *hw)
{
 u32 led_ctrl;
 s32 ret_val;
 u16 phy_data;

 e_dbg("e1000_copper_link_igp_setup");

 if (hw->phy_reset_disable)
  return E1000_SUCCESS;

 ret_val = e1000_phy_reset(hw);
 if (ret_val) {
  e_dbg("Error Resetting the PHY\n");
  return ret_val;
 }


 msleep(15);

 led_ctrl = er32(LEDCTL);
 led_ctrl &= IGP_ACTIVITY_LED_MASK;
 led_ctrl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
 ew32(LEDCTL, led_ctrl);


 if (hw->phy_type == e1000_phy_igp) {

  ret_val = e1000_set_d3_lplu_state(hw, 0);
  if (ret_val) {
   e_dbg("Error Disabling LPLU D3\n");
   return ret_val;
  }
 }


 ret_val = e1000_read_phy_reg(hw, IGP01E1000_PHY_PORT_CTRL, &phy_data);
 if (ret_val)
  return ret_val;

 if ((hw->mac_type == e1000_82541) || (hw->mac_type == e1000_82547)) {
  hw->dsp_config_state = e1000_dsp_config_disabled;

  phy_data &=
      ~(IGP01E1000_PSCR_AUTO_MDIX |
        IGP01E1000_PSCR_FORCE_MDI_MDIX);
  hw->mdix = 1;

 } else {
  hw->dsp_config_state = e1000_dsp_config_enabled;
  phy_data &= ~IGP01E1000_PSCR_AUTO_MDIX;

  switch (hw->mdix) {
  case 1:
   phy_data &= ~IGP01E1000_PSCR_FORCE_MDI_MDIX;
   break;
  case 2:
   phy_data |= IGP01E1000_PSCR_FORCE_MDI_MDIX;
   break;
  case 0:
  default:
   phy_data |= IGP01E1000_PSCR_AUTO_MDIX;
   break;
  }
 }
 ret_val = e1000_write_phy_reg(hw, IGP01E1000_PHY_PORT_CTRL, phy_data);
 if (ret_val)
  return ret_val;


 if (hw->autoneg) {
  e1000_ms_type phy_ms_setting = hw->master_slave;

  if (hw->ffe_config_state == e1000_ffe_config_active)
   hw->ffe_config_state = e1000_ffe_config_enabled;

  if (hw->dsp_config_state == e1000_dsp_config_activated)
   hw->dsp_config_state = e1000_dsp_config_enabled;




  if (hw->autoneg_advertised == ADVERTISE_1000_FULL) {

   ret_val =
       e1000_read_phy_reg(hw, IGP01E1000_PHY_PORT_CONFIG,
            &phy_data);
   if (ret_val)
    return ret_val;
   phy_data &= ~IGP01E1000_PSCFR_SMART_SPEED;
   ret_val =
       e1000_write_phy_reg(hw, IGP01E1000_PHY_PORT_CONFIG,
      phy_data);
   if (ret_val)
    return ret_val;

   ret_val =
       e1000_read_phy_reg(hw, PHY_1000T_CTRL, &phy_data);
   if (ret_val)
    return ret_val;
   phy_data &= ~CR_1000T_MS_ENABLE;
   ret_val =
       e1000_write_phy_reg(hw, PHY_1000T_CTRL, phy_data);
   if (ret_val)
    return ret_val;
  }

  ret_val = e1000_read_phy_reg(hw, PHY_1000T_CTRL, &phy_data);
  if (ret_val)
   return ret_val;


  hw->original_master_slave = (phy_data & CR_1000T_MS_ENABLE) ?
      ((phy_data & CR_1000T_MS_VALUE) ?
       129 :
       128) : 130;

  switch (phy_ms_setting) {
  case 129:
   phy_data |= (CR_1000T_MS_ENABLE | CR_1000T_MS_VALUE);
   break;
  case 128:
   phy_data |= CR_1000T_MS_ENABLE;
   phy_data &= ~(CR_1000T_MS_VALUE);
   break;
  case 130:
   phy_data &= ~CR_1000T_MS_ENABLE;
  default:
   break;
  }
  ret_val = e1000_write_phy_reg(hw, PHY_1000T_CTRL, phy_data);
  if (ret_val)
   return ret_val;
 }

 return E1000_SUCCESS;
}
