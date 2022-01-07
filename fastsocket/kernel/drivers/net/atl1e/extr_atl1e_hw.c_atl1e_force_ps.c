
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1e_hw {int dummy; } ;


 int AT_WRITE_REGW (struct atl1e_hw*,int ,int) ;
 int GPHY_CTRL_EXT_RESET ;
 int GPHY_CTRL_PW_WOL_DIS ;
 int REG_GPHY_CTRL ;

void atl1e_force_ps(struct atl1e_hw *hw)
{
 AT_WRITE_REGW(hw, REG_GPHY_CTRL,
   GPHY_CTRL_PW_WOL_DIS | GPHY_CTRL_EXT_RESET);
}
