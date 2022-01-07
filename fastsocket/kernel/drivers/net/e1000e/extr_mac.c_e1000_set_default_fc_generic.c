
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int requested_mode; } ;
struct e1000_hw {TYPE_1__ fc; } ;
typedef scalar_t__ s32 ;


 int NVM_INIT_CONTROL2_REG ;
 int NVM_WORD0F_ASM_DIR ;
 int NVM_WORD0F_PAUSE_MASK ;
 int e1000_fc_full ;
 int e1000_fc_none ;
 int e1000_fc_tx_pause ;
 scalar_t__ e1000_read_nvm (struct e1000_hw*,int ,int,int*) ;
 int e_dbg (char*) ;

__attribute__((used)) static s32 e1000_set_default_fc_generic(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 nvm_data;
 ret_val = e1000_read_nvm(hw, NVM_INIT_CONTROL2_REG, 1, &nvm_data);

 if (ret_val) {
  e_dbg("NVM Read Error\n");
  return ret_val;
 }

 if (!(nvm_data & NVM_WORD0F_PAUSE_MASK))
  hw->fc.requested_mode = e1000_fc_none;
 else if ((nvm_data & NVM_WORD0F_PAUSE_MASK) == NVM_WORD0F_ASM_DIR)
  hw->fc.requested_mode = e1000_fc_tx_pause;
 else
  hw->fc.requested_mode = e1000_fc_full;

 return 0;
}
