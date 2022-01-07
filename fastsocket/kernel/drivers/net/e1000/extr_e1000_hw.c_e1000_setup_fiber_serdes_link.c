
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {scalar_t__ media_type; scalar_t__ mac_type; int fc; int txcw; int autoneg_failed; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int E1000_CTRL_LRST ;
 int E1000_CTRL_SWDPIN1 ;
 scalar_t__ E1000_ERR_CONFIG ;




 int E1000_STATUS_LU ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_TXCW_ANE ;
 int E1000_TXCW_ASM_DIR ;
 int E1000_TXCW_FD ;
 int E1000_TXCW_PAUSE_MASK ;
 int E1000_WRITE_FLUSH () ;
 int LINK_UP_TIMEOUT ;
 int STATUS ;
 int TXCW ;
 scalar_t__ e1000_82544 ;
 scalar_t__ e1000_adjust_serdes_amplitude (struct e1000_hw*) ;
 scalar_t__ e1000_check_for_link (struct e1000_hw*) ;
 int e1000_config_collision_dist (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_fiber ;
 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000_set_vco_speed (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;

__attribute__((used)) static s32 e1000_setup_fiber_serdes_link(struct e1000_hw *hw)
{
 u32 ctrl;
 u32 status;
 u32 txcw = 0;
 u32 i;
 u32 signal = 0;
 s32 ret_val;

 e_dbg("e1000_setup_fiber_serdes_link");







 ctrl = er32(CTRL);
 if (hw->media_type == e1000_media_type_fiber)
  signal = (hw->mac_type > e1000_82544) ? E1000_CTRL_SWDPIN1 : 0;

 ret_val = e1000_adjust_serdes_amplitude(hw);
 if (ret_val)
  return ret_val;


 ctrl &= ~(E1000_CTRL_LRST);


 ret_val = e1000_set_vco_speed(hw);
 if (ret_val)
  return ret_val;

 e1000_config_collision_dist(hw);
 switch (hw->fc) {
 case 130:

  txcw = (E1000_TXCW_ANE | E1000_TXCW_FD);
  break;
 case 129:






  txcw = (E1000_TXCW_ANE | E1000_TXCW_FD | E1000_TXCW_PAUSE_MASK);
  break;
 case 128:



  txcw = (E1000_TXCW_ANE | E1000_TXCW_FD | E1000_TXCW_ASM_DIR);
  break;
 case 131:

  txcw = (E1000_TXCW_ANE | E1000_TXCW_FD | E1000_TXCW_PAUSE_MASK);
  break;
 default:
  e_dbg("Flow control param set incorrectly\n");
  return -E1000_ERR_CONFIG;
  break;
 }







 e_dbg("Auto-negotiation enabled\n");

 ew32(TXCW, txcw);
 ew32(CTRL, ctrl);
 E1000_WRITE_FLUSH();

 hw->txcw = txcw;
 msleep(1);







 if (hw->media_type == e1000_media_type_internal_serdes ||
     (er32(CTRL) & E1000_CTRL_SWDPIN1) == signal) {
  e_dbg("Looking for Link\n");
  for (i = 0; i < (LINK_UP_TIMEOUT / 10); i++) {
   msleep(10);
   status = er32(STATUS);
   if (status & E1000_STATUS_LU)
    break;
  }
  if (i == (LINK_UP_TIMEOUT / 10)) {
   e_dbg("Never got a valid link from auto-neg!!!\n");
   hw->autoneg_failed = 1;





   ret_val = e1000_check_for_link(hw);
   if (ret_val) {
    e_dbg("Error while checking for link\n");
    return ret_val;
   }
   hw->autoneg_failed = 0;
  } else {
   hw->autoneg_failed = 0;
   e_dbg("Valid Link Found\n");
  }
 } else {
  e_dbg("No Signal Detected\n");
 }
 return E1000_SUCCESS;
}
