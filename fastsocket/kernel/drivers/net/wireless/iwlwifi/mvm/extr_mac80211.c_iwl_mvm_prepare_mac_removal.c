
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct iwl_mvm {int sta_drained_wk; int roc_done_wk; int mutex; } ;
struct ieee80211_vif {scalar_t__* hw_queue; scalar_t__ cab_queue; scalar_t__ type; } ;


 size_t BIT (scalar_t__) ;
 scalar_t__ IEEE80211_INVAL_HW_QUEUE ;
 size_t IEEE80211_NUM_ACS ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int flush_work (int *) ;
 int iwl_mvm_flush_tx_path (struct iwl_mvm*,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_prepare_mac_removal(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif)
{
 u32 tfd_msk = 0, ac;

 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
  if (vif->hw_queue[ac] != IEEE80211_INVAL_HW_QUEUE)
   tfd_msk |= BIT(vif->hw_queue[ac]);

 if (vif->cab_queue != IEEE80211_INVAL_HW_QUEUE)
  tfd_msk |= BIT(vif->cab_queue);

 if (tfd_msk) {
  mutex_lock(&mvm->mutex);
  iwl_mvm_flush_tx_path(mvm, tfd_msk, 1);
  mutex_unlock(&mvm->mutex);
 }

 if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {





  flush_work(&mvm->roc_done_wk);
 } else {







  flush_work(&mvm->sta_drained_wk);
 }
}
