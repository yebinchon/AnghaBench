
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int IWL_ERR (struct iwl_mvm*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ IWL_MAX_TID_COUNT ;
 int rs_tl_turn_on_agg_for_tid (struct iwl_mvm*,struct iwl_lq_sta*,scalar_t__,struct ieee80211_sta*) ;

__attribute__((used)) static void rs_tl_turn_on_agg(struct iwl_mvm *mvm, u8 tid,
         struct iwl_lq_sta *lq_data,
         struct ieee80211_sta *sta)
{
 if (tid < IWL_MAX_TID_COUNT)
  rs_tl_turn_on_agg_for_tid(mvm, lq_data, tid, sta);
 else
  IWL_ERR(mvm, "tid exceeds max TID count: %d/%d\n",
   tid, IWL_MAX_TID_COUNT);
}
