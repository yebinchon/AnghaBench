
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {scalar_t__ media_type; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int MII_CR_POWER_DOWN ;
 int PHY_CTRL ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_read_phy_reg (struct e1000_hw*,int ,int *) ;
 int e1000_write_phy_reg (struct e1000_hw*,int ,int ) ;

void e1000_power_up_phy(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u16 mii_reg = 0;


 if (hw->media_type == e1000_media_type_copper) {


  e1000_read_phy_reg(hw, PHY_CTRL, &mii_reg);
  mii_reg &= ~MII_CR_POWER_DOWN;
  e1000_write_phy_reg(hw, PHY_CTRL, mii_reg);
 }
}
