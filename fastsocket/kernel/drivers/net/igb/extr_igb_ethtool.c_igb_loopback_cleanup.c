
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int autoneg; } ;
struct e1000_hw {scalar_t__ device_id; TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 scalar_t__ E1000_DEV_ID_DH89XXCC_BACKPLANE ;
 scalar_t__ E1000_DEV_ID_DH89XXCC_SERDES ;
 scalar_t__ E1000_DEV_ID_DH89XXCC_SFP ;
 scalar_t__ E1000_DEV_ID_DH89XXCC_SGMII ;
 int E1000_MPHY_ADDR_CTL ;
 int E1000_MPHY_ADDR_CTL_OFFSET_MASK ;
 int E1000_MPHY_DATA ;
 int E1000_MPHY_PCS_CLK_REG_DIGINELBEN ;
 int E1000_MPHY_PCS_CLK_REG_OFFSET ;
 int E1000_RCTL ;
 int E1000_RCTL_LBM_MAC ;
 int E1000_RCTL_LBM_TCVR ;
 int MII_CR_LOOPBACK ;
 int PHY_CONTROL ;
 int igb_phy_sw_reset (struct e1000_hw*) ;
 int igb_read_phy_reg (struct e1000_hw*,int ,int*) ;
 int igb_write_phy_reg (struct e1000_hw*,int ,int) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_loopback_cleanup(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 rctl;
 u16 phy_reg;

 if ((hw->device_id == E1000_DEV_ID_DH89XXCC_SGMII) ||
 (hw->device_id == E1000_DEV_ID_DH89XXCC_SERDES) ||
 (hw->device_id == E1000_DEV_ID_DH89XXCC_BACKPLANE) ||
 (hw->device_id == E1000_DEV_ID_DH89XXCC_SFP)) {
  u32 reg;


  reg = rd32(E1000_MPHY_ADDR_CTL);
  reg = (reg & E1000_MPHY_ADDR_CTL_OFFSET_MASK) |
  E1000_MPHY_PCS_CLK_REG_OFFSET;
  wr32(E1000_MPHY_ADDR_CTL, reg);

  reg = rd32(E1000_MPHY_DATA);
  reg &= ~E1000_MPHY_PCS_CLK_REG_DIGINELBEN;
  wr32(E1000_MPHY_DATA, reg);
 }

 rctl = rd32(E1000_RCTL);
 rctl &= ~(E1000_RCTL_LBM_TCVR | E1000_RCTL_LBM_MAC);
 wr32(E1000_RCTL, rctl);

 hw->mac.autoneg = 1;
 igb_read_phy_reg(hw, PHY_CONTROL, &phy_reg);
 if (phy_reg & MII_CR_LOOPBACK) {
  phy_reg &= ~MII_CR_LOOPBACK;
  igb_write_phy_reg(hw, PHY_CONTROL, phy_reg);
  igb_phy_sw_reset(hw);
 }
}
