
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int autoneg_failed; int txcw; int serdes_has_link; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_SLU ;
 int E1000_RXCW_C ;
 int E1000_RXCW_IV ;
 int E1000_RXCW_SYNCH ;
 int E1000_STATUS_LU ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_TXCW_ANE ;
 int RXCW ;
 int STATUS ;
 int TXCW ;
 scalar_t__ e1000_config_fc_after_link_up (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_check_for_serdes_link_generic(struct e1000_hw *hw)
{
 u32 rxcw;
 u32 ctrl;
 u32 status;
 s32 ret_val = E1000_SUCCESS;

 e_dbg("e1000_check_for_serdes_link_generic");

 ctrl = er32(CTRL);
 status = er32(STATUS);
 rxcw = er32(RXCW);
 if ((!(status & E1000_STATUS_LU)) && (!(rxcw & E1000_RXCW_C))) {
  if (hw->autoneg_failed == 0) {
   hw->autoneg_failed = 1;
   goto out;
  }
  e_dbg("NOT RXing /C/, disable AutoNeg and force link.\n");


  ew32(TXCW, (hw->txcw & ~E1000_TXCW_ANE));


  ctrl = er32(CTRL);
  ctrl |= (E1000_CTRL_SLU | E1000_CTRL_FD);
  ew32(CTRL, ctrl);


  ret_val = e1000_config_fc_after_link_up(hw);
  if (ret_val) {
   e_dbg("Error configuring flow control\n");
   goto out;
  }
 } else if ((ctrl & E1000_CTRL_SLU) && (rxcw & E1000_RXCW_C)) {






  e_dbg("RXing /C/, enable AutoNeg and stop forcing link.\n");
  ew32(TXCW, hw->txcw);
  ew32(CTRL, (ctrl & ~E1000_CTRL_SLU));

  hw->serdes_has_link = 1;
 } else if (!(E1000_TXCW_ANE & er32(TXCW))) {






  udelay(10);
  rxcw = er32(RXCW);
  if (rxcw & E1000_RXCW_SYNCH) {
   if (!(rxcw & E1000_RXCW_IV)) {
    hw->serdes_has_link = 1;
    e_dbg("SERDES: Link up - forced.\n");
   }
  } else {
   hw->serdes_has_link = 0;
   e_dbg("SERDES: Link down - force failed.\n");
  }
 }

 if (E1000_TXCW_ANE & er32(TXCW)) {
  status = er32(STATUS);
  if (status & E1000_STATUS_LU) {

   udelay(10);
   rxcw = er32(RXCW);
   if (rxcw & E1000_RXCW_SYNCH) {
    if (!(rxcw & E1000_RXCW_IV)) {
     hw->serdes_has_link = 1;
     e_dbg("SERDES: Link up - autoneg "
       "completed successfully.\n");
    } else {
     hw->serdes_has_link = 0;
     e_dbg("SERDES: Link down - invalid"
       "codewords detected in autoneg.\n");
    }
   } else {
    hw->serdes_has_link = 0;
    e_dbg("SERDES: Link down - no sync.\n");
   }
  } else {
   hw->serdes_has_link = 0;
   e_dbg("SERDES: Link down - autoneg failed\n");
  }
 }

      out:
 return ret_val;
}
