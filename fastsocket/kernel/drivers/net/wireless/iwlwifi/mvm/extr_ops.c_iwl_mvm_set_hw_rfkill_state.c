
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {TYPE_1__* hw; int status; } ;
struct TYPE_2__ {int wiphy; } ;


 int IWL_MVM_STATUS_HW_RFKILL ;
 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static void iwl_mvm_set_hw_rfkill_state(struct iwl_op_mode *op_mode, bool state)
{
 struct iwl_mvm *mvm = IWL_OP_MODE_GET_MVM(op_mode);

 if (state)
  set_bit(IWL_MVM_STATUS_HW_RFKILL, &mvm->status);
 else
  clear_bit(IWL_MVM_STATUS_HW_RFKILL, &mvm->status);

 wiphy_rfkill_set_hw_state(mvm->hw->wiphy, state);
}
