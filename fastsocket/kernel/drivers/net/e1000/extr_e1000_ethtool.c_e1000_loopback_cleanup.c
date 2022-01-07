
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int mac_type; int autoneg; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int E1000_RCTL_LBM_MAC ;
 int E1000_RCTL_LBM_TCVR ;
 int MII_CR_LOOPBACK ;
 int PHY_CTRL ;
 int RCTL ;




 int e1000_phy_reset (struct e1000_hw*) ;
 int e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 int e1000_write_phy_reg (struct e1000_hw*,int ,int) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 rctl;
 u16 phy_reg;

 rctl = er32(RCTL);
 rctl &= ~(E1000_RCTL_LBM_TCVR | E1000_RCTL_LBM_MAC);
 ew32(RCTL, rctl);

 switch (hw->mac_type) {
 case 131:
 case 129:
 case 130:
 case 128:
 default:
  hw->autoneg = 1;
  e1000_read_phy_reg(hw, PHY_CTRL, &phy_reg);
  if (phy_reg & MII_CR_LOOPBACK) {
   phy_reg &= ~MII_CR_LOOPBACK;
   e1000_write_phy_reg(hw, PHY_CTRL, phy_reg);
   e1000_phy_reset(hw);
  }
  break;
 }
}
