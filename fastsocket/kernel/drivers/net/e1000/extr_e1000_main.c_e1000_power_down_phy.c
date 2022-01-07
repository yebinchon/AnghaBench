
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int mac_type; scalar_t__ media_type; } ;
struct e1000_adapter {int wol; struct e1000_hw hw; } ;


 int E1000_MANC_SMBUS_EN ;
 int MANC ;
 int MII_CR_POWER_DOWN ;
 int PHY_CTRL ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_read_phy_reg (struct e1000_hw*,int ,int *) ;
 int e1000_write_phy_reg (struct e1000_hw*,int ,int ) ;
 int er32 (int ) ;
 int msleep (int) ;

__attribute__((used)) static void e1000_power_down_phy(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;






 if (!adapter->wol && hw->mac_type >= 137 &&
    hw->media_type == e1000_media_type_copper) {
  u16 mii_reg = 0;

  switch (hw->mac_type) {
  case 137:
  case 134:
  case 133:
  case 132:
  case 128:
  case 131:
  case 136:
  case 135:
  case 130:
  case 129:
   if (er32(MANC) & E1000_MANC_SMBUS_EN)
    goto out;
   break;
  default:
   goto out;
  }
  e1000_read_phy_reg(hw, PHY_CTRL, &mii_reg);
  mii_reg |= MII_CR_POWER_DOWN;
  e1000_write_phy_reg(hw, PHY_CTRL, mii_reg);
  msleep(1);
 }
out:
 return;
}
