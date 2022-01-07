
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int fc; scalar_t__ mac_type; } ;
typedef int s32 ;


 int CTRL ;
 int E1000_CTRL_RFCE ;
 int E1000_CTRL_TFCE ;
 int E1000_ERR_CONFIG ;




 int E1000_SUCCESS ;
 scalar_t__ e1000_82542_rev2_0 ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

s32 e1000_force_mac_fc(struct e1000_hw *hw)
{
 u32 ctrl;

 e_dbg("e1000_force_mac_fc");


 ctrl = er32(CTRL);
 switch (hw->fc) {
 case 130:
  ctrl &= (~(E1000_CTRL_TFCE | E1000_CTRL_RFCE));
  break;
 case 129:
  ctrl &= (~E1000_CTRL_TFCE);
  ctrl |= E1000_CTRL_RFCE;
  break;
 case 128:
  ctrl &= (~E1000_CTRL_RFCE);
  ctrl |= E1000_CTRL_TFCE;
  break;
 case 131:
  ctrl |= (E1000_CTRL_TFCE | E1000_CTRL_RFCE);
  break;
 default:
  e_dbg("Flow control param set incorrectly\n");
  return -E1000_ERR_CONFIG;
 }


 if (hw->mac_type == e1000_82542_rev2_0)
  ctrl &= (~E1000_CTRL_TFCE);

 ew32(CTRL, ctrl);
 return E1000_SUCCESS;
}
