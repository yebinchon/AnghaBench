
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int hw; TYPE_1__* nvm_sections; int nvm_data; int * phy_db; int trans; int scan_cmd; } ;
struct TYPE_2__ {int data; } ;


 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 int NVM_NUM_OF_SECTIONS ;
 int ieee80211_free_hw (int ) ;
 int ieee80211_unregister_hw (int ) ;
 int iwl_free_nvm_data (int ) ;
 int iwl_mvm_leds_exit (struct iwl_mvm*) ;
 int iwl_phy_db_free (int *) ;
 int iwl_trans_stop_hw (int ,int) ;
 int kfree (int ) ;

__attribute__((used)) static void iwl_op_mode_mvm_stop(struct iwl_op_mode *op_mode)
{
 struct iwl_mvm *mvm = IWL_OP_MODE_GET_MVM(op_mode);
 int i;

 iwl_mvm_leds_exit(mvm);

 ieee80211_unregister_hw(mvm->hw);

 kfree(mvm->scan_cmd);

 iwl_trans_stop_hw(mvm->trans, 1);

 iwl_phy_db_free(mvm->phy_db);
 mvm->phy_db = ((void*)0);

 iwl_free_nvm_data(mvm->nvm_data);
 for (i = 0; i < NVM_NUM_OF_SECTIONS; i++)
  kfree(mvm->nvm_sections[i].data);

 ieee80211_free_hw(mvm->hw);
}
