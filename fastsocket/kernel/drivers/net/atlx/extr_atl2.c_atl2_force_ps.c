
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl2_hw {int dummy; } ;


 int MII_DBG_ADDR ;
 int MII_DBG_DATA ;
 int atl2_read_phy_reg (struct atl2_hw*,int ,int*) ;
 int atl2_write_phy_reg (struct atl2_hw*,int ,int) ;

__attribute__((used)) static void atl2_force_ps(struct atl2_hw *hw)
{
 u16 phy_val;

 atl2_write_phy_reg(hw, MII_DBG_ADDR, 0);
 atl2_read_phy_reg(hw, MII_DBG_DATA, &phy_val);
 atl2_write_phy_reg(hw, MII_DBG_DATA, phy_val | 0x1000);

 atl2_write_phy_reg(hw, MII_DBG_ADDR, 2);
 atl2_write_phy_reg(hw, MII_DBG_DATA, 0x3000);
 atl2_write_phy_reg(hw, MII_DBG_ADDR, 3);
 atl2_write_phy_reg(hw, MII_DBG_DATA, 0);
}
