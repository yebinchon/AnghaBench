
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int phy_type; } ;
typedef int s32 ;


 int E1000_SUCCESS ;
 int MII_CR_RESET ;
 int PHY_CTRL ;
 int e1000_phy_hw_reset (struct e1000_hw*) ;

 int e1000_phy_init_script (struct e1000_hw*) ;
 int e1000_read_phy_reg (struct e1000_hw*,int ,int *) ;
 int e1000_write_phy_reg (struct e1000_hw*,int ,int ) ;
 int e_dbg (char*) ;
 int udelay (int) ;

s32 e1000_phy_reset(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 phy_data;

 e_dbg("e1000_phy_reset");

 switch (hw->phy_type) {
 case 128:
  ret_val = e1000_phy_hw_reset(hw);
  if (ret_val)
   return ret_val;
  break;
 default:
  ret_val = e1000_read_phy_reg(hw, PHY_CTRL, &phy_data);
  if (ret_val)
   return ret_val;

  phy_data |= MII_CR_RESET;
  ret_val = e1000_write_phy_reg(hw, PHY_CTRL, phy_data);
  if (ret_val)
   return ret_val;

  udelay(1);
  break;
 }

 if (hw->phy_type == 128)
  e1000_phy_init_script(hw);

 return E1000_SUCCESS;
}
