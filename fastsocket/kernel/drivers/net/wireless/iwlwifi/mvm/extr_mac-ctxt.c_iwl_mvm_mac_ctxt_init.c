
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct iwl_mvm {int trans; int mutex; } ;
struct ieee80211_vif {int type; int * hw_queue; int cab_queue; } ;


 size_t IEEE80211_NUM_ACS ;
 int IWL_MVM_OFFCHANNEL_QUEUE ;
 int IWL_MVM_TX_FIFO_MCAST ;
 int IWL_MVM_TX_FIFO_VO ;


 int * iwl_mvm_ac_to_tx_fifo ;
 int iwl_mvm_mac_ctxt_allocate_resources (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_trans_ac_txq_enable (int ,int ,int ) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_mac_ctxt_init(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 u32 ac;
 int ret;

 lockdep_assert_held(&mvm->mutex);

 ret = iwl_mvm_mac_ctxt_allocate_resources(mvm, vif);
 if (ret)
  return ret;

 switch (vif->type) {
 case 128:
  iwl_trans_ac_txq_enable(mvm->trans, IWL_MVM_OFFCHANNEL_QUEUE,
     IWL_MVM_TX_FIFO_VO);
  break;
 case 129:
  iwl_trans_ac_txq_enable(mvm->trans, vif->cab_queue,
     IWL_MVM_TX_FIFO_MCAST);

 default:
  for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
   iwl_trans_ac_txq_enable(mvm->trans, vif->hw_queue[ac],
      iwl_mvm_ac_to_tx_fifo[ac]);
  break;
 }

 return 0;
}
