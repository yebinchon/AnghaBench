
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int dummy; } ;
struct ieee80211_sta {scalar_t__ addr; } ;
struct TYPE_2__ {scalar_t__ auto_agg; } ;


 int EAGAIN ;
 scalar_t__ IWL_AGG_LOAD_THRESHOLD ;
 int IWL_DEBUG_HT (struct iwl_mvm*,char*,scalar_t__,scalar_t__) ;
 int IWL_ERR (struct iwl_mvm*,char*,scalar_t__) ;
 int ieee80211_start_tx_ba_session (struct ieee80211_sta*,scalar_t__,int) ;
 int ieee80211_stop_tx_ba_session (struct ieee80211_sta*,scalar_t__) ;
 TYPE_1__ iwlwifi_mod_params ;
 scalar_t__ rs_tl_get_load (struct iwl_lq_sta*,scalar_t__) ;

__attribute__((used)) static int rs_tl_turn_on_agg_for_tid(struct iwl_mvm *mvm,
          struct iwl_lq_sta *lq_data, u8 tid,
          struct ieee80211_sta *sta)
{
 int ret = -EAGAIN;
 u32 load;

 load = rs_tl_get_load(lq_data, tid);

 if ((iwlwifi_mod_params.auto_agg) || (load > IWL_AGG_LOAD_THRESHOLD)) {
  IWL_DEBUG_HT(mvm, "Starting Tx agg: STA: %pM tid: %d\n",
        sta->addr, tid);
  ret = ieee80211_start_tx_ba_session(sta, tid, 5000);
  if (ret == -EAGAIN) {





   IWL_ERR(mvm, "Fail start Tx agg on tid: %d\n",
    tid);
   ieee80211_stop_tx_ba_session(sta, tid);
  }
 } else {
  IWL_DEBUG_HT(mvm,
        "Aggregation not enabled for tid %d because load = %u\n",
        tid, load);
 }
 return ret;
}
