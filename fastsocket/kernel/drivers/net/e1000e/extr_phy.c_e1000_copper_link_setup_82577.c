
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int I82577_CFG_ASSERT_CRS_ON_TX ;
 int I82577_CFG_ENABLE_DOWNSHIFT ;
 int I82577_CFG_REG ;
 scalar_t__ e1000_set_master_slave_mode (struct e1000_hw*) ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int ) ;

s32 e1000_copper_link_setup_82577(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 phy_data;


 ret_val = e1e_rphy(hw, I82577_CFG_REG, &phy_data);
 if (ret_val)
  return ret_val;

 phy_data |= I82577_CFG_ASSERT_CRS_ON_TX;


 phy_data |= I82577_CFG_ENABLE_DOWNSHIFT;

 ret_val = e1e_wphy(hw, I82577_CFG_REG, phy_data);
 if (ret_val)
  return ret_val;

 return e1000_set_master_slave_mode(hw);
}
