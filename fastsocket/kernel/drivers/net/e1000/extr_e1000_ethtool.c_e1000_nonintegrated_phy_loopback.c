
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_ILOS ;
 int E1000_CTRL_SPD_1000 ;
 int M88E1000_EXT_PHY_SPEC_CTRL ;
 int M88E1000_PHY_SPEC_CTRL ;
 int M88E1000_PSCR_AUTO_X_MODE ;
 int MII_CR_LOOPBACK ;
 int PHY_CTRL ;
 int e1000_phy_disable_receiver (struct e1000_adapter*) ;
 int e1000_phy_reset (struct e1000_hw*) ;
 int e1000_phy_reset_clk_and_crs (struct e1000_adapter*) ;
 int e1000_read_phy_reg (struct e1000_hw*,int,int*) ;
 int e1000_write_phy_reg (struct e1000_hw*,int,int) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int e1000_nonintegrated_phy_loopback(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl_reg;
 u16 phy_reg;



 ctrl_reg = er32(CTRL);
 ctrl_reg |= (E1000_CTRL_ILOS |
       E1000_CTRL_FRCSPD |
       E1000_CTRL_FRCDPX |
       E1000_CTRL_SPD_1000 |
       E1000_CTRL_FD);

 ew32(CTRL, ctrl_reg);


 e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_reg);




 phy_reg &= ~M88E1000_PSCR_AUTO_X_MODE;
 e1000_write_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_reg);


 e1000_phy_reset(hw);


 e1000_phy_reset_clk_and_crs(adapter);

 e1000_write_phy_reg(hw, PHY_CTRL, 0x8100);


 udelay(500);


 e1000_phy_reset_clk_and_crs(adapter);


 e1000_phy_disable_receiver(adapter);


 e1000_read_phy_reg(hw, PHY_CTRL, &phy_reg);
 phy_reg |= MII_CR_LOOPBACK;
 e1000_write_phy_reg(hw, PHY_CTRL, phy_reg);


 e1000_phy_reset_clk_and_crs(adapter);


 e1000_read_phy_reg(hw, PHY_CTRL, &phy_reg);
 if (phy_reg != 0x4100)
   return 9;

 e1000_read_phy_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL, &phy_reg);
 if (phy_reg != 0x0070)
  return 10;

 e1000_read_phy_reg(hw, 29, &phy_reg);
 if (phy_reg != 0x001A)
  return 11;

 return 0;
}
