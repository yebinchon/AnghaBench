
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int power_down; int power_up; } ;
struct e1000_phy_info {scalar_t__ media_type; int addr; int reset_delay_us; scalar_t__ id; int type; int autoneg_mask; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int AUTONEG_ADVERTISE_SPEED_DEFAULT ;
 int E1000_ERR_PHY ;
 scalar_t__ GG82563_E_PHY_ID ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_phy_gg82563 ;
 int e1000_phy_none ;
 int e1000_power_down_phy_copper_80003es2lan ;
 int e1000_power_up_phy_copper ;
 int e1000e_get_phy_id (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_init_phy_params_80003es2lan(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;

 if (hw->phy.media_type != e1000_media_type_copper) {
  phy->type = e1000_phy_none;
  return 0;
 } else {
  phy->ops.power_up = e1000_power_up_phy_copper;
  phy->ops.power_down = e1000_power_down_phy_copper_80003es2lan;
 }

 phy->addr = 1;
 phy->autoneg_mask = AUTONEG_ADVERTISE_SPEED_DEFAULT;
 phy->reset_delay_us = 100;
 phy->type = e1000_phy_gg82563;


 ret_val = e1000e_get_phy_id(hw);


 if (phy->id != GG82563_E_PHY_ID)
  return -E1000_ERR_PHY;

 return ret_val;
}
