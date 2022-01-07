
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int aux_sta; int mutex; } ;


 int MAC_INDEX_AUX ;
 int iwl_mvm_add_int_sta_common (struct iwl_mvm*,int *,int *,int ,int ) ;
 int iwl_mvm_allocate_int_sta (struct iwl_mvm*,int *,int ) ;
 int iwl_mvm_dealloc_int_sta (struct iwl_mvm*,int *) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_add_aux_sta(struct iwl_mvm *mvm)
{
 int ret;

 lockdep_assert_held(&mvm->mutex);


 ret = iwl_mvm_allocate_int_sta(mvm, &mvm->aux_sta, 0);
 if (ret)
  return ret;

 ret = iwl_mvm_add_int_sta_common(mvm, &mvm->aux_sta, ((void*)0),
      MAC_INDEX_AUX, 0);

 if (ret)
  iwl_mvm_dealloc_int_sta(mvm, &mvm->aux_sta);
 return ret;
}
