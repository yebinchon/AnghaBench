
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_hw {int dummy; } ;


 int PHY_CT_PDOWN ;
 int PHY_CT_RESET ;
 int PHY_MARV_CTRL ;
 int PHY_MARV_PHY_CTRL ;
 int PHY_M_PC_POL_R_DIS ;
 int gm_phy_read (struct skge_hw*,int,int ) ;
 int gm_phy_write (struct skge_hw*,int,int ,int ) ;

__attribute__((used)) static void yukon_suspend(struct skge_hw *hw, int port)
{
 u16 ctrl;

 ctrl = gm_phy_read(hw, port, PHY_MARV_PHY_CTRL);
 ctrl |= PHY_M_PC_POL_R_DIS;
 gm_phy_write(hw, port, PHY_MARV_PHY_CTRL, ctrl);

 ctrl = gm_phy_read(hw, port, PHY_MARV_CTRL);
 ctrl |= PHY_CT_RESET;
 gm_phy_write(hw, port, PHY_MARV_CTRL, ctrl);


 ctrl = gm_phy_read(hw, port, PHY_MARV_CTRL);
 ctrl |= PHY_CT_PDOWN;
 gm_phy_write(hw, port, PHY_MARV_CTRL, ctrl);
}
