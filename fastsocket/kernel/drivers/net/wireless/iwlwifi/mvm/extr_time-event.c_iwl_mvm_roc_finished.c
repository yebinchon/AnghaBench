
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int roc_done_wk; int status; } ;


 int IWL_MVM_STATUS_ROC_RUNNING ;
 int clear_bit (int ,int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void iwl_mvm_roc_finished(struct iwl_mvm *mvm)
{







 clear_bit(IWL_MVM_STATUS_ROC_RUNNING, &mvm->status);
 schedule_work(&mvm->roc_done_wk);
}
