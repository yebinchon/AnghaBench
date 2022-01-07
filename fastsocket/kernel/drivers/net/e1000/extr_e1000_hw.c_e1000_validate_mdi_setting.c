
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int mdix; int autoneg; } ;
typedef int s32 ;


 int E1000_ERR_CONFIG ;
 int E1000_SUCCESS ;
 int e_dbg (char*) ;

s32 e1000_validate_mdi_setting(struct e1000_hw *hw)
{
 e_dbg("e1000_validate_mdi_settings");

 if (!hw->autoneg && (hw->mdix == 0 || hw->mdix == 3)) {
  e_dbg("Invalid MDI setting detected\n");
  hw->mdix = 1;
  return -E1000_ERR_CONFIG;
 }
 return E1000_SUCCESS;
}
