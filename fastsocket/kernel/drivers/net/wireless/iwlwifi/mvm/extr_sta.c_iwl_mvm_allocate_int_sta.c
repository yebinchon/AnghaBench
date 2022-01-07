
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm_int_sta {size_t sta_id; int tfd_queue_msk; } ;
struct iwl_mvm {int * fw_id_to_mac_id; int status; } ;


 int EINVAL ;
 int ENOSPC ;
 int ERR_PTR (int ) ;
 size_t IWL_MVM_STATION_COUNT ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 scalar_t__ WARN_ON_ONCE (int) ;
 size_t iwl_mvm_find_free_sta_id (struct iwl_mvm*) ;
 int rcu_assign_pointer (int ,int ) ;
 int test_bit (int ,int *) ;

int iwl_mvm_allocate_int_sta(struct iwl_mvm *mvm, struct iwl_mvm_int_sta *sta,
        u32 qmask)
{
 if (!test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)) {
  sta->sta_id = iwl_mvm_find_free_sta_id(mvm);
  if (WARN_ON_ONCE(sta->sta_id == IWL_MVM_STATION_COUNT))
   return -ENOSPC;
 }

 sta->tfd_queue_msk = qmask;


 rcu_assign_pointer(mvm->fw_id_to_mac_id[sta->sta_id], ERR_PTR(-EINVAL));
 return 0;
}
