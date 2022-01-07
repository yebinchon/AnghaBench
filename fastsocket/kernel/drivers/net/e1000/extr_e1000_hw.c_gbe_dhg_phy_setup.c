
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int phy_type; } ;
typedef int s32 ;


 int CTL_AUX ;
 int E1000_CTL_AUX_RMII ;
 int E1000_ERR_PHY_TYPE ;
 int E1000_SUCCESS ;
 int E1000_WRITE_FLUSH () ;
 int e1000_copper_link_rtl_setup (struct e1000_hw*) ;


 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static s32 gbe_dhg_phy_setup(struct e1000_hw *hw)
{
 s32 ret_val;
 u32 ctrl_aux;

 switch (hw->phy_type) {
 case 128:
  ret_val = e1000_copper_link_rtl_setup(hw);
  if (ret_val) {
   e_dbg("e1000_copper_link_rtl_setup failed!\n");
   return ret_val;
  }
  break;
 case 129:

  ctrl_aux = er32(CTL_AUX);
  ctrl_aux |= E1000_CTL_AUX_RMII;
  ew32(CTL_AUX, ctrl_aux);
  E1000_WRITE_FLUSH();


  ctrl_aux = er32(CTL_AUX);
  ctrl_aux |= 0x4;
  ctrl_aux &= ~0x2;
  ew32(CTL_AUX, ctrl_aux);
  E1000_WRITE_FLUSH();
  ret_val = e1000_copper_link_rtl_setup(hw);

  if (ret_val) {
   e_dbg("e1000_copper_link_rtl_setup failed!\n");
   return ret_val;
  }
  break;
 default:
  e_dbg("Error Resetting the PHY\n");
  return E1000_ERR_PHY_TYPE;
 }

 return E1000_SUCCESS;
}
