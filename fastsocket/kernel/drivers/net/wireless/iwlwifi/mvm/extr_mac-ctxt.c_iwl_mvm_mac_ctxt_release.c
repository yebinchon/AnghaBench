
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int trans; int mutex; } ;
struct ieee80211_vif {int type; int * hw_queue; int cab_queue; } ;


 int IEEE80211_NUM_ACS ;
 int IWL_MVM_OFFCHANNEL_QUEUE ;


 int iwl_trans_txq_disable (int ,int ) ;
 int lockdep_assert_held (int *) ;

void iwl_mvm_mac_ctxt_release(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 int ac;

 lockdep_assert_held(&mvm->mutex);

 switch (vif->type) {
 case 128:
  iwl_trans_txq_disable(mvm->trans, IWL_MVM_OFFCHANNEL_QUEUE);
  break;
 case 129:
  iwl_trans_txq_disable(mvm->trans, vif->cab_queue);

 default:
  for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
   iwl_trans_txq_disable(mvm->trans, vif->hw_queue[ac]);
 }
}
