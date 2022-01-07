
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_mac_info {int autoneg_failed; int txcw; int serdes_has_link; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_SLU ;
 int E1000_RXCW_C ;
 int E1000_RXCW_IV ;
 int E1000_RXCW_SYNCH ;
 int E1000_STATUS_LU ;
 int E1000_TXCW_ANE ;
 int RXCW ;
 int STATUS ;
 int TXCW ;
 scalar_t__ e1000e_config_fc_after_link_up (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int usleep_range (int,int) ;

s32 e1000e_check_for_serdes_link(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 rxcw;
 u32 ctrl;
 u32 status;
 s32 ret_val;

 ctrl = er32(CTRL);
 status = er32(STATUS);
 rxcw = er32(RXCW);
 if (!(status & E1000_STATUS_LU) && !(rxcw & E1000_RXCW_C)) {
  if (!mac->autoneg_failed) {
   mac->autoneg_failed = 1;
   return 0;
  }
  e_dbg("NOT Rx'ing /C/, disable AutoNeg and force link.\n");


  ew32(TXCW, (mac->txcw & ~E1000_TXCW_ANE));


  ctrl = er32(CTRL);
  ctrl |= (E1000_CTRL_SLU | E1000_CTRL_FD);
  ew32(CTRL, ctrl);


  ret_val = e1000e_config_fc_after_link_up(hw);
  if (ret_val) {
   e_dbg("Error configuring flow control\n");
   return ret_val;
  }
 } else if ((ctrl & E1000_CTRL_SLU) && (rxcw & E1000_RXCW_C)) {





  e_dbg("Rx'ing /C/, enable AutoNeg and stop forcing link.\n");
  ew32(TXCW, mac->txcw);
  ew32(CTRL, (ctrl & ~E1000_CTRL_SLU));

  mac->serdes_has_link = 1;
 } else if (!(E1000_TXCW_ANE & er32(TXCW))) {





  usleep_range(10, 20);
  rxcw = er32(RXCW);
  if (rxcw & E1000_RXCW_SYNCH) {
   if (!(rxcw & E1000_RXCW_IV)) {
    mac->serdes_has_link = 1;
    e_dbg("SERDES: Link up - forced.\n");
   }
  } else {
   mac->serdes_has_link = 0;
   e_dbg("SERDES: Link down - force failed.\n");
  }
 }

 if (E1000_TXCW_ANE & er32(TXCW)) {
  status = er32(STATUS);
  if (status & E1000_STATUS_LU) {

   usleep_range(10, 20);
   rxcw = er32(RXCW);
   if (rxcw & E1000_RXCW_SYNCH) {
    if (!(rxcw & E1000_RXCW_IV)) {
     mac->serdes_has_link = 1;
     e_dbg("SERDES: Link up - autoneg completed successfully.\n");
    } else {
     mac->serdes_has_link = 0;
     e_dbg("SERDES: Link down - invalid codewords detected in autoneg.\n");
    }
   } else {
    mac->serdes_has_link = 0;
    e_dbg("SERDES: Link down - no sync.\n");
   }
  } else {
   mac->serdes_has_link = 0;
   e_dbg("SERDES: Link down - autoneg failed\n");
  }
 }

 return 0;
}
