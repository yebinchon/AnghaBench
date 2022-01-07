
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; int * fw_id_to_mac_id; int status; } ;


 int IWL_MVM_STATION_COUNT ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int WARN_ON_ONCE (int ) ;
 int lockdep_assert_held (int *) ;
 int lockdep_is_held (int *) ;
 int rcu_dereference_protected (int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int iwl_mvm_find_free_sta_id(struct iwl_mvm *mvm)
{
 int sta_id;

 WARN_ON_ONCE(test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status));

 lockdep_assert_held(&mvm->mutex);


 for (sta_id = 0; sta_id < IWL_MVM_STATION_COUNT; sta_id++)
  if (!rcu_dereference_protected(mvm->fw_id_to_mac_id[sta_id],
            lockdep_is_held(&mvm->mutex)))
   return sta_id;
 return IWL_MVM_STATION_COUNT;
}
