
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int mac_type; int ledctl_default; int phy_spd_default; } ;
typedef int s32 ;


 int E1000_SUCCESS ;
 int IGP01E1000_GMII_FIFO ;
 int LEDCTL ;
 int e1000_write_phy_reg (struct e1000_hw*,int ,int ) ;
 int e_dbg (char*) ;
 int ew32 (int ,int ) ;

s32 e1000_cleanup_led(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;

 e_dbg("e1000_cleanup_led");

 switch (hw->mac_type) {
 case 133:
 case 132:
 case 131:
 case 130:

  break;
 case 135:
 case 129:
 case 134:
 case 128:

  ret_val = e1000_write_phy_reg(hw, IGP01E1000_GMII_FIFO,
           hw->phy_spd_default);
  if (ret_val)
   return ret_val;

 default:

  ew32(LEDCTL, hw->ledctl_default);
  break;
 }

 return E1000_SUCCESS;
}
