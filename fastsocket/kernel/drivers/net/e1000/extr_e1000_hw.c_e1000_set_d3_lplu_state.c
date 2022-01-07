
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {scalar_t__ phy_type; scalar_t__ mac_type; scalar_t__ smart_speed; scalar_t__ autoneg_advertised; } ;
typedef scalar_t__ s32 ;


 scalar_t__ AUTONEG_ADVERTISE_10_100_ALL ;
 scalar_t__ AUTONEG_ADVERTISE_10_ALL ;
 scalar_t__ AUTONEG_ADVERTISE_SPEED_DEFAULT ;
 scalar_t__ E1000_SUCCESS ;
 int IGP01E1000_GMII_FIFO ;
 int IGP01E1000_GMII_FLEX_SPD ;
 int IGP01E1000_PHY_PORT_CONFIG ;
 int IGP01E1000_PSCFR_SMART_SPEED ;
 scalar_t__ e1000_82541_rev_2 ;
 scalar_t__ e1000_82547_rev_2 ;
 scalar_t__ e1000_phy_igp ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1000_smart_speed_off ;
 scalar_t__ e1000_smart_speed_on ;
 scalar_t__ e1000_write_phy_reg (struct e1000_hw*,int ,int ) ;
 int e_dbg (char*) ;

__attribute__((used)) static s32 e1000_set_d3_lplu_state(struct e1000_hw *hw, bool active)
{
 s32 ret_val;
 u16 phy_data;
 e_dbg("e1000_set_d3_lplu_state");

 if (hw->phy_type != e1000_phy_igp)
  return E1000_SUCCESS;




 if (hw->mac_type == e1000_82541_rev_2
     || hw->mac_type == e1000_82547_rev_2) {
  ret_val =
      e1000_read_phy_reg(hw, IGP01E1000_GMII_FIFO, &phy_data);
  if (ret_val)
   return ret_val;
 }

 if (!active) {
  if (hw->mac_type == e1000_82541_rev_2 ||
      hw->mac_type == e1000_82547_rev_2) {
   phy_data &= ~IGP01E1000_GMII_FLEX_SPD;
   ret_val =
       e1000_write_phy_reg(hw, IGP01E1000_GMII_FIFO,
      phy_data);
   if (ret_val)
    return ret_val;
  }





  if (hw->smart_speed == e1000_smart_speed_on) {
   ret_val =
       e1000_read_phy_reg(hw, IGP01E1000_PHY_PORT_CONFIG,
            &phy_data);
   if (ret_val)
    return ret_val;

   phy_data |= IGP01E1000_PSCFR_SMART_SPEED;
   ret_val =
       e1000_write_phy_reg(hw, IGP01E1000_PHY_PORT_CONFIG,
      phy_data);
   if (ret_val)
    return ret_val;
  } else if (hw->smart_speed == e1000_smart_speed_off) {
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
  }
 } else if ((hw->autoneg_advertised == AUTONEG_ADVERTISE_SPEED_DEFAULT)
     || (hw->autoneg_advertised == AUTONEG_ADVERTISE_10_ALL)
     || (hw->autoneg_advertised ==
         AUTONEG_ADVERTISE_10_100_ALL)) {

  if (hw->mac_type == e1000_82541_rev_2 ||
      hw->mac_type == e1000_82547_rev_2) {
   phy_data |= IGP01E1000_GMII_FLEX_SPD;
   ret_val =
       e1000_write_phy_reg(hw, IGP01E1000_GMII_FIFO,
      phy_data);
   if (ret_val)
    return ret_val;
  }


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

 }
 return E1000_SUCCESS;
}
