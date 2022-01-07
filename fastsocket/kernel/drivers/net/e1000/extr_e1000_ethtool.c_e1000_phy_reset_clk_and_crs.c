
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int M88E1000_EPSCR_TX_CLK_25 ;
 int M88E1000_EXT_PHY_SPEC_CTRL ;
 int M88E1000_PHY_SPEC_CTRL ;
 int M88E1000_PSCR_ASSERT_CRS_ON_TX ;
 int e1000_read_phy_reg (struct e1000_hw*,int ,int *) ;
 int e1000_write_phy_reg (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static void e1000_phy_reset_clk_and_crs(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u16 phy_reg;





 e1000_read_phy_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL, &phy_reg);
 phy_reg |= M88E1000_EPSCR_TX_CLK_25;
 e1000_write_phy_reg(hw,
  M88E1000_EXT_PHY_SPEC_CTRL, phy_reg);





 e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_reg);
 phy_reg |= M88E1000_PSCR_ASSERT_CRS_ON_TX;
 e1000_write_phy_reg(hw,
  M88E1000_PHY_SPEC_CTRL, phy_reg);
}
