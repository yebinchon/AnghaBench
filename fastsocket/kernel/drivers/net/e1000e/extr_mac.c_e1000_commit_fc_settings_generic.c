
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct e1000_mac_info {int txcw; } ;
struct TYPE_2__ {int current_mode; } ;
struct e1000_hw {TYPE_1__ fc; struct e1000_mac_info mac; } ;
typedef int s32 ;


 int E1000_ERR_CONFIG ;
 int E1000_TXCW_ANE ;
 int E1000_TXCW_ASM_DIR ;
 int E1000_TXCW_FD ;
 int E1000_TXCW_PAUSE_MASK ;
 int TXCW ;




 int e_dbg (char*) ;
 int ew32 (int ,int) ;

__attribute__((used)) static s32 e1000_commit_fc_settings_generic(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 txcw;
 switch (hw->fc.current_mode) {
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

 ew32(TXCW, txcw);
 mac->txcw = txcw;

 return 0;
}
