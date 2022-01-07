
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_int_sta {int sta_id; } ;
struct iwl_mvm {int mutex; } ;


 int IWL_WARN (struct iwl_mvm*,char*) ;
 int iwl_mvm_rm_sta_common (struct iwl_mvm*,int ) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_send_rm_bcast_sta(struct iwl_mvm *mvm,
         struct iwl_mvm_int_sta *bsta)
{
 int ret;

 lockdep_assert_held(&mvm->mutex);

 ret = iwl_mvm_rm_sta_common(mvm, bsta->sta_id);
 if (ret)
  IWL_WARN(mvm, "Failed sending remove station\n");
 return ret;
}
