
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pch_gbe_hw {int dummy; } ;


 int MII_CR_RESET ;
 int PHY_CONTROL ;
 int pch_gbe_phy_read_reg_miic (struct pch_gbe_hw*,int ,int *) ;
 int pch_gbe_phy_write_reg_miic (struct pch_gbe_hw*,int ,int ) ;
 int udelay (int) ;

void pch_gbe_phy_sw_reset(struct pch_gbe_hw *hw)
{
 u16 phy_ctrl;

 pch_gbe_phy_read_reg_miic(hw, PHY_CONTROL, &phy_ctrl);
 phy_ctrl |= MII_CR_RESET;
 pch_gbe_phy_write_reg_miic(hw, PHY_CONTROL, phy_ctrl);
 udelay(1);
}
