
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct e1000_phy_info {int autoneg_advertised; int autoneg_mask; } ;
struct TYPE_2__ {int current_mode; } ;
struct e1000_hw {TYPE_1__ fc; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int ADVERTISE_1000FULL ;
 int ADVERTISE_1000HALF ;
 int ADVERTISE_1000_FULL ;
 int ADVERTISE_1000_HALF ;
 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_100_FULL ;
 int ADVERTISE_100_HALF ;
 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int ADVERTISE_10_FULL ;
 int ADVERTISE_10_HALF ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 scalar_t__ E1000_ERR_CONFIG ;
 int MII_ADVERTISE ;
 int MII_CTRL1000 ;




 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int) ;
 int e_dbg (char*,...) ;

__attribute__((used)) static s32 e1000_phy_setup_autoneg(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 mii_autoneg_adv_reg;
 u16 mii_1000t_ctrl_reg = 0;

 phy->autoneg_advertised &= phy->autoneg_mask;


 ret_val = e1e_rphy(hw, MII_ADVERTISE, &mii_autoneg_adv_reg);
 if (ret_val)
  return ret_val;

 if (phy->autoneg_mask & ADVERTISE_1000_FULL) {

  ret_val = e1e_rphy(hw, MII_CTRL1000, &mii_1000t_ctrl_reg);
  if (ret_val)
   return ret_val;
 }
 mii_autoneg_adv_reg &= ~(ADVERTISE_100FULL |
     ADVERTISE_100HALF |
     ADVERTISE_10FULL | ADVERTISE_10HALF);
 mii_1000t_ctrl_reg &= ~(ADVERTISE_1000HALF | ADVERTISE_1000FULL);

 e_dbg("autoneg_advertised %x\n", phy->autoneg_advertised);


 if (phy->autoneg_advertised & ADVERTISE_10_HALF) {
  e_dbg("Advertise 10mb Half duplex\n");
  mii_autoneg_adv_reg |= ADVERTISE_10HALF;
 }


 if (phy->autoneg_advertised & ADVERTISE_10_FULL) {
  e_dbg("Advertise 10mb Full duplex\n");
  mii_autoneg_adv_reg |= ADVERTISE_10FULL;
 }


 if (phy->autoneg_advertised & ADVERTISE_100_HALF) {
  e_dbg("Advertise 100mb Half duplex\n");
  mii_autoneg_adv_reg |= ADVERTISE_100HALF;
 }


 if (phy->autoneg_advertised & ADVERTISE_100_FULL) {
  e_dbg("Advertise 100mb Full duplex\n");
  mii_autoneg_adv_reg |= ADVERTISE_100FULL;
 }


 if (phy->autoneg_advertised & ADVERTISE_1000_HALF)
  e_dbg("Advertise 1000mb Half duplex request denied!\n");


 if (phy->autoneg_advertised & ADVERTISE_1000_FULL) {
  e_dbg("Advertise 1000mb Full duplex\n");
  mii_1000t_ctrl_reg |= ADVERTISE_1000FULL;
 }
 switch (hw->fc.current_mode) {
 case 130:



  mii_autoneg_adv_reg &=
      ~(ADVERTISE_PAUSE_ASYM | ADVERTISE_PAUSE_CAP);
  break;
 case 129:
  mii_autoneg_adv_reg |=
      (ADVERTISE_PAUSE_ASYM | ADVERTISE_PAUSE_CAP);
  break;
 case 128:



  mii_autoneg_adv_reg |= ADVERTISE_PAUSE_ASYM;
  mii_autoneg_adv_reg &= ~ADVERTISE_PAUSE_CAP;
  break;
 case 131:



  mii_autoneg_adv_reg |=
      (ADVERTISE_PAUSE_ASYM | ADVERTISE_PAUSE_CAP);
  break;
 default:
  e_dbg("Flow control param set incorrectly\n");
  return -E1000_ERR_CONFIG;
 }

 ret_val = e1e_wphy(hw, MII_ADVERTISE, mii_autoneg_adv_reg);
 if (ret_val)
  return ret_val;

 e_dbg("Auto-Neg Advertising %x\n", mii_autoneg_adv_reg);

 if (phy->autoneg_mask & ADVERTISE_1000_FULL)
  ret_val = e1e_wphy(hw, MII_CTRL1000, mii_1000t_ctrl_reg);

 return ret_val;
}
