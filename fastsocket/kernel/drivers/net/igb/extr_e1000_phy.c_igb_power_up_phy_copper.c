
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* write_reg ) (struct e1000_hw*,int ,int ) ;int (* read_reg ) (struct e1000_hw*,int ,int *) ;} ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;


 int GS40G_COPPER_SPEC ;
 int GS40G_CS_POWER_DOWN ;
 int MII_CR_POWER_DOWN ;
 int PHY_CONTROL ;
 scalar_t__ e1000_phy_i210 ;
 int stub1 (struct e1000_hw*,int ,int *) ;
 int stub2 (struct e1000_hw*,int ,int *) ;
 int stub3 (struct e1000_hw*,int ,int ) ;
 int stub4 (struct e1000_hw*,int ,int ) ;

void igb_power_up_phy_copper(struct e1000_hw *hw)
{
 u16 mii_reg = 0;
 u16 power_reg = 0;


 hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
 mii_reg &= ~MII_CR_POWER_DOWN;
 if (hw->phy.type == e1000_phy_i210) {
  hw->phy.ops.read_reg(hw, GS40G_COPPER_SPEC, &power_reg);
  power_reg &= ~GS40G_CS_POWER_DOWN;
  hw->phy.ops.write_reg(hw, GS40G_COPPER_SPEC, power_reg);
 }
 hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);
}
