
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int ap_sta_id; int color; int id; } ;
struct iwl_mvm_sta {int sta_id; int tid_data; int tfd_queue_msk; scalar_t__ tid_disable_agg; int max_agg_bufsize; struct ieee80211_vif* vif; int mac_id_n_color; int lock; } ;
struct iwl_mvm {int * fw_id_to_mac_id; int * pending_frames; int status; int mutex; } ;
struct ieee80211_vif {scalar_t__* hw_queue; scalar_t__ type; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;


 int BIT (scalar_t__) ;
 int ENOSPC ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 scalar_t__ IEEE80211_INVAL_HW_QUEUE ;
 int IEEE80211_NUM_ACS ;
 int IWL_MVM_STATION_COUNT ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int LINK_QUAL_AGG_FRAME_LIMIT_DEF ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_set (int *,int ) ;
 int iwl_mvm_find_free_sta_id (struct iwl_mvm*) ;
 int iwl_mvm_sta_send_to_fw (struct iwl_mvm*,struct ieee80211_sta*,int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;
 int memset (int ,int ,int) ;
 int rcu_assign_pointer (int ,struct ieee80211_sta*) ;
 int spin_lock_init (int *) ;
 int test_bit (int ,int *) ;

int iwl_mvm_add_sta(struct iwl_mvm *mvm,
      struct ieee80211_vif *vif,
      struct ieee80211_sta *sta)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_sta *mvm_sta = (void *)sta->drv_priv;
 int i, ret, sta_id;

 lockdep_assert_held(&mvm->mutex);

 if (!test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status))
  sta_id = iwl_mvm_find_free_sta_id(mvm);
 else
  sta_id = mvm_sta->sta_id;

 if (WARN_ON_ONCE(sta_id == IWL_MVM_STATION_COUNT))
  return -ENOSPC;

 spin_lock_init(&mvm_sta->lock);

 mvm_sta->sta_id = sta_id;
 mvm_sta->mac_id_n_color = FW_CMD_ID_AND_COLOR(mvmvif->id,
            mvmvif->color);
 mvm_sta->vif = vif;
 mvm_sta->max_agg_bufsize = LINK_QUAL_AGG_FRAME_LIMIT_DEF;


 atomic_set(&mvm->pending_frames[sta_id], 0);
 mvm_sta->tid_disable_agg = 0;
 mvm_sta->tfd_queue_msk = 0;
 for (i = 0; i < IEEE80211_NUM_ACS; i++)
  if (vif->hw_queue[i] != IEEE80211_INVAL_HW_QUEUE)
   mvm_sta->tfd_queue_msk |= BIT(vif->hw_queue[i]);


 memset(mvm_sta->tid_data, 0, sizeof(mvm_sta->tid_data));

 ret = iwl_mvm_sta_send_to_fw(mvm, sta, 0);
 if (ret)
  return ret;


 if (vif->type == NL80211_IFTYPE_STATION &&
     mvmvif->ap_sta_id == IWL_MVM_STATION_COUNT)
  mvmvif->ap_sta_id = sta_id;

 rcu_assign_pointer(mvm->fw_id_to_mac_id[sta_id], sta);

 return 0;
}
