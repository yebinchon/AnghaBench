
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_hw {int dummy; } ;


 int PHY_1000T_CTRL ;
 int PHY_1000T_CTRL_DEFAULT ;
 int PHY_AUTONEG_ADV ;
 int PHY_AUTONEG_ADV_DEFAULT ;
 int PHY_CONTROL ;
 int PHY_CONTROL_DEFAULT ;
 int PHY_NEXT_PAGE_TX ;
 int PHY_NEXT_PAGE_TX_DEFAULT ;
 int PHY_PHYSP_CONTROL ;
 int PHY_PHYSP_CONTROL_DEFAULT ;
 int pch_gbe_phy_write_reg_miic (struct pch_gbe_hw*,int ,int ) ;

void pch_gbe_phy_hw_reset(struct pch_gbe_hw *hw)
{
 pch_gbe_phy_write_reg_miic(hw, PHY_CONTROL, PHY_CONTROL_DEFAULT);
 pch_gbe_phy_write_reg_miic(hw, PHY_AUTONEG_ADV,
     PHY_AUTONEG_ADV_DEFAULT);
 pch_gbe_phy_write_reg_miic(hw, PHY_NEXT_PAGE_TX,
     PHY_NEXT_PAGE_TX_DEFAULT);
 pch_gbe_phy_write_reg_miic(hw, PHY_1000T_CTRL, PHY_1000T_CTRL_DEFAULT);
 pch_gbe_phy_write_reg_miic(hw, PHY_PHYSP_CONTROL,
     PHY_PHYSP_CONTROL_DEFAULT);
}
