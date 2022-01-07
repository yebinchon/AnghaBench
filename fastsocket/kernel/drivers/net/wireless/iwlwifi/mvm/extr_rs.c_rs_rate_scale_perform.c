
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct iwl_scale_tbl_info {int* expected_tpt; scalar_t__ max_search; int current_rate; void* lq_type; struct iwl_rate_scale_data* win; } ;
struct iwl_rate_scale_data {scalar_t__ counter; int average_tpt; int success_ratio; int success_counter; } ;
struct iwl_mvm_tid_data {scalar_t__ state; } ;
struct iwl_mvm_sta {struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int supp_rates; size_t band; int tx_agg_tid_en; int is_agg; int active_tbl; int is_green; int last_txrate_idx; int max_rate_idx; int last_tpt; int enable_counter; scalar_t__ action_counter; struct iwl_scale_tbl_info* lq_info; int stay_in_tbl; int lq; scalar_t__ search_better_tbl; } ;
struct ieee80211_tx_info {int flags; } ;
struct TYPE_2__ {int ht_supported; } ;
struct ieee80211_sta {int* supp_rates; TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int s8 ;
typedef int s32 ;


 int CMD_ASYNC ;
 size_t IEEE80211_BAND_5GHZ ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 scalar_t__ IWL_AGG_OFF ;
 int IWL_AGG_TPT_THREHOLD ;
 int IWL_DEBUG_RATE (struct iwl_mvm*,char*,...) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_FIRST_OFDM_RATE ;
 int IWL_INVALID_VALUE ;
 int IWL_MAX_TID_COUNT ;
 int IWL_RATE_COUNT ;
 int IWL_RATE_DECREASE_TH ;
 int IWL_RATE_HIGH_TH ;
 int IWL_RATE_INCREASE_TH ;
 int IWL_RATE_INVALID ;
 scalar_t__ IWL_RATE_MIN_FAILURE_TH ;
 int IWL_RATE_MIN_SUCCESS_TH ;
 void* LQ_NONE ;
 int ieee80211_is_data (int ) ;
 scalar_t__ is_legacy (void*) ;
 scalar_t__ is_mimo2 (void*) ;
 scalar_t__ is_siso (void*) ;
 int iwl_hwrate_to_plcp_idx (int ) ;
 int iwl_mvm_send_lq_cmd (struct iwl_mvm*,int *,int ,int) ;
 int rate_n_flags_from_tbl (struct iwl_mvm*,struct iwl_scale_tbl_info*,int,int) ;
 int rs_fill_link_cmd (struct iwl_mvm*,struct iwl_lq_sta*,int ) ;
 int rs_get_adjacent_rate (struct iwl_mvm*,int,int,void*) ;
 int rs_get_supported_rates (struct iwl_lq_sta*,struct ieee80211_hdr*,void*) ;
 int rs_move_legacy_other (struct iwl_mvm*,struct iwl_lq_sta*,struct ieee80211_sta*,int) ;
 int rs_move_mimo2_to_other (struct iwl_mvm*,struct iwl_lq_sta*,struct ieee80211_sta*,int) ;
 int rs_move_mimo3_to_other (struct iwl_mvm*,struct iwl_lq_sta*,struct ieee80211_sta*,int) ;
 int rs_move_siso_to_other (struct iwl_mvm*,struct iwl_lq_sta*,struct ieee80211_sta*,int) ;
 int rs_rate_scale_clear_window (struct iwl_rate_scale_data*) ;
 int rs_set_stay_in_table (struct iwl_mvm*,int,struct iwl_lq_sta*) ;
 int rs_stay_in_table (struct iwl_lq_sta*,int) ;
 int rs_tl_add_packet (struct iwl_lq_sta*,struct ieee80211_hdr*) ;
 int rs_tl_turn_on_agg (struct iwl_mvm*,int,struct iwl_lq_sta*,struct ieee80211_sta*) ;
 int rs_update_rate_tbl (struct iwl_mvm*,struct iwl_lq_sta*,struct iwl_scale_tbl_info*,int,int) ;
 int rs_use_green (struct ieee80211_sta*) ;

__attribute__((used)) static void rs_rate_scale_perform(struct iwl_mvm *mvm,
      struct sk_buff *skb,
      struct ieee80211_sta *sta,
      struct iwl_lq_sta *lq_sta)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 int low = IWL_RATE_INVALID;
 int high = IWL_RATE_INVALID;
 int index;
 int i;
 struct iwl_rate_scale_data *window = ((void*)0);
 int current_tpt = IWL_INVALID_VALUE;
 int low_tpt = IWL_INVALID_VALUE;
 int high_tpt = IWL_INVALID_VALUE;
 u32 fail_count;
 s8 scale_action = 0;
 u16 rate_mask;
 u8 update_lq = 0;
 struct iwl_scale_tbl_info *tbl, *tbl1;
 u16 rate_scale_index_msk = 0;
 u8 is_green = 0;
 u8 active_tbl = 0;
 u8 done_search = 0;
 u16 high_low;
 s32 sr;
 u8 tid = IWL_MAX_TID_COUNT;
 struct iwl_mvm_sta *sta_priv = (void *)sta->drv_priv;
 struct iwl_mvm_tid_data *tid_data;

 IWL_DEBUG_RATE(mvm, "rate scale calculate new rate for skb\n");



 if (!ieee80211_is_data(hdr->frame_control) ||
     info->flags & IEEE80211_TX_CTL_NO_ACK)
  return;

 lq_sta->supp_rates = sta->supp_rates[lq_sta->band];

 tid = rs_tl_add_packet(lq_sta, hdr);
 if ((tid != IWL_MAX_TID_COUNT) &&
     (lq_sta->tx_agg_tid_en & (1 << tid))) {
  tid_data = &sta_priv->tid_data[tid];
  if (tid_data->state == IWL_AGG_OFF)
   lq_sta->is_agg = 0;
  else
   lq_sta->is_agg = 1;
 } else {
  lq_sta->is_agg = 0;
 }






 if (!lq_sta->search_better_tbl)
  active_tbl = lq_sta->active_tbl;
 else
  active_tbl = 1 - lq_sta->active_tbl;

 tbl = &(lq_sta->lq_info[active_tbl]);
 if (is_legacy(tbl->lq_type))
  lq_sta->is_green = 0;
 else
  lq_sta->is_green = rs_use_green(sta);
 is_green = lq_sta->is_green;


 index = lq_sta->last_txrate_idx;

 IWL_DEBUG_RATE(mvm, "Rate scale index %d for type %d\n", index,
         tbl->lq_type);


 rate_mask = rs_get_supported_rates(lq_sta, hdr, tbl->lq_type);

 IWL_DEBUG_RATE(mvm, "mask 0x%04X\n", rate_mask);


 if (is_legacy(tbl->lq_type)) {
  if (lq_sta->band == IEEE80211_BAND_5GHZ)

   rate_scale_index_msk = (u16) (rate_mask &
    (lq_sta->supp_rates << IWL_FIRST_OFDM_RATE));
  else
   rate_scale_index_msk = (u16) (rate_mask &
            lq_sta->supp_rates);

 } else {
  rate_scale_index_msk = rate_mask;
 }

 if (!rate_scale_index_msk)
  rate_scale_index_msk = rate_mask;

 if (!((1 << index) & rate_scale_index_msk)) {
  IWL_ERR(mvm, "Current Rate is not valid\n");
  if (lq_sta->search_better_tbl) {

   tbl->lq_type = LQ_NONE;
   lq_sta->search_better_tbl = 0;
   tbl = &(lq_sta->lq_info[lq_sta->active_tbl]);

   index = iwl_hwrate_to_plcp_idx(tbl->current_rate);
   rs_update_rate_tbl(mvm, lq_sta, tbl, index, is_green);
  }
  return;
 }


 if (!tbl->expected_tpt) {
  IWL_ERR(mvm, "tbl->expected_tpt is NULL\n");
  return;
 }


 if ((lq_sta->max_rate_idx != -1) &&
     (lq_sta->max_rate_idx < index)) {
  index = lq_sta->max_rate_idx;
  update_lq = 1;
  window = &(tbl->win[index]);
  goto lq_update;
 }

 window = &(tbl->win[index]);
 fail_count = window->counter - window->success_counter;
 if ((fail_count < IWL_RATE_MIN_FAILURE_TH) &&
     (window->success_counter < IWL_RATE_MIN_SUCCESS_TH)) {
  IWL_DEBUG_RATE(mvm,
          "LQ: still below TH. succ=%d total=%d for index %d\n",
          window->success_counter, window->counter, index);


  window->average_tpt = IWL_INVALID_VALUE;



  rs_stay_in_table(lq_sta, 0);

  goto out;
 }


 if (window->average_tpt != ((window->success_ratio *
   tbl->expected_tpt[index] + 64) / 128)) {
  IWL_ERR(mvm,
   "expected_tpt should have been calculated by now\n");
  window->average_tpt = ((window->success_ratio *
     tbl->expected_tpt[index] + 64) / 128);
 }


 if (lq_sta->search_better_tbl) {



  if (window->average_tpt > lq_sta->last_tpt) {
   IWL_DEBUG_RATE(mvm,
           "LQ: SWITCHING TO NEW TABLE suc=%d cur-tpt=%d old-tpt=%d\n",
           window->success_ratio,
           window->average_tpt,
           lq_sta->last_tpt);

   if (!is_legacy(tbl->lq_type))
    lq_sta->enable_counter = 1;


   lq_sta->active_tbl = active_tbl;
   current_tpt = window->average_tpt;

  } else {
   IWL_DEBUG_RATE(mvm,
           "LQ: GOING BACK TO THE OLD TABLE suc=%d cur-tpt=%d old-tpt=%d\n",
           window->success_ratio,
           window->average_tpt,
           lq_sta->last_tpt);


   tbl->lq_type = LQ_NONE;


   active_tbl = lq_sta->active_tbl;
   tbl = &(lq_sta->lq_info[active_tbl]);


   index = iwl_hwrate_to_plcp_idx(tbl->current_rate);
   current_tpt = lq_sta->last_tpt;


   update_lq = 1;
  }



  lq_sta->search_better_tbl = 0;
  done_search = 1;
  goto lq_update;
 }



 high_low = rs_get_adjacent_rate(mvm, index, rate_scale_index_msk,
     tbl->lq_type);
 low = high_low & 0xff;
 high = (high_low >> 8) & 0xff;


 if ((lq_sta->max_rate_idx != -1) &&
     (lq_sta->max_rate_idx < high))
  high = IWL_RATE_INVALID;

 sr = window->success_ratio;


 current_tpt = window->average_tpt;
 if (low != IWL_RATE_INVALID)
  low_tpt = tbl->win[low].average_tpt;
 if (high != IWL_RATE_INVALID)
  high_tpt = tbl->win[high].average_tpt;

 scale_action = 0;


 if ((sr <= IWL_RATE_DECREASE_TH) || (current_tpt == 0)) {
  IWL_DEBUG_RATE(mvm,
          "decrease rate because of low success_ratio\n");
  scale_action = -1;

 } else if ((low_tpt == IWL_INVALID_VALUE) &&
     (high_tpt == IWL_INVALID_VALUE)) {
  if (high != IWL_RATE_INVALID && sr >= IWL_RATE_INCREASE_TH)
   scale_action = 1;
  else if (low != IWL_RATE_INVALID)
   scale_action = 0;
 }



 else if ((low_tpt != IWL_INVALID_VALUE) &&
   (high_tpt != IWL_INVALID_VALUE) &&
   (low_tpt < current_tpt) &&
   (high_tpt < current_tpt))
  scale_action = 0;



 else {

  if (high_tpt != IWL_INVALID_VALUE) {

   if (high_tpt > current_tpt &&
       sr >= IWL_RATE_INCREASE_TH) {
    scale_action = 1;
   } else {
    scale_action = 0;
   }


  } else if (low_tpt != IWL_INVALID_VALUE) {

   if (low_tpt > current_tpt) {
    IWL_DEBUG_RATE(mvm,
            "decrease rate because of low tpt\n");
    scale_action = -1;
   } else if (sr >= IWL_RATE_INCREASE_TH) {
    scale_action = 1;
   }
  }
 }



 if ((scale_action == -1) && (low != IWL_RATE_INVALID) &&
     ((sr > IWL_RATE_HIGH_TH) ||
      (current_tpt > (100 * tbl->expected_tpt[low]))))
  scale_action = 0;

 switch (scale_action) {
 case -1:

  if (low != IWL_RATE_INVALID) {
   update_lq = 1;
   index = low;
  }

  break;
 case 1:

  if (high != IWL_RATE_INVALID) {
   update_lq = 1;
   index = high;
  }

  break;
 case 0:

 default:
  break;
 }

 IWL_DEBUG_RATE(mvm,
         "choose rate scale index %d action %d low %d high %d type %d\n",
         index, scale_action, low, high, tbl->lq_type);

lq_update:

 if (update_lq)
  rs_update_rate_tbl(mvm, lq_sta, tbl, index, is_green);

 rs_stay_in_table(lq_sta, 0);







 if (!update_lq && !done_search &&
     !lq_sta->stay_in_tbl && window->counter) {

  lq_sta->last_tpt = current_tpt;



  if (is_legacy(tbl->lq_type))
   rs_move_legacy_other(mvm, lq_sta, sta, index);
  else if (is_siso(tbl->lq_type))
   rs_move_siso_to_other(mvm, lq_sta, sta, index);
  else if (is_mimo2(tbl->lq_type))
   rs_move_mimo2_to_other(mvm, lq_sta, sta, index);
  else
   rs_move_mimo3_to_other(mvm, lq_sta, sta, index);


  if (lq_sta->search_better_tbl) {

   tbl = &(lq_sta->lq_info[(1 - lq_sta->active_tbl)]);
   for (i = 0; i < IWL_RATE_COUNT; i++)
    rs_rate_scale_clear_window(&(tbl->win[i]));


   index = iwl_hwrate_to_plcp_idx(tbl->current_rate);

   IWL_DEBUG_RATE(mvm,
           "Switch current  mcs: %X index: %d\n",
           tbl->current_rate, index);
   rs_fill_link_cmd(mvm, lq_sta, tbl->current_rate);
   iwl_mvm_send_lq_cmd(mvm, &lq_sta->lq, CMD_ASYNC, 0);
  } else {
   done_search = 1;
  }
 }

 if (done_search && !lq_sta->stay_in_tbl) {





  tbl1 = &(lq_sta->lq_info[lq_sta->active_tbl]);
  if (is_legacy(tbl1->lq_type) && !sta->ht_cap.ht_supported &&
      lq_sta->action_counter > tbl1->max_search) {
   IWL_DEBUG_RATE(mvm, "LQ: STAY in legacy table\n");
   rs_set_stay_in_table(mvm, 1, lq_sta);
  }




  if (lq_sta->enable_counter &&
      (lq_sta->action_counter >= tbl1->max_search)) {
   if ((lq_sta->last_tpt > IWL_AGG_TPT_THREHOLD) &&
       (lq_sta->tx_agg_tid_en & (1 << tid)) &&
       (tid != IWL_MAX_TID_COUNT)) {
    tid_data = &sta_priv->tid_data[tid];
    if (tid_data->state == IWL_AGG_OFF) {
     IWL_DEBUG_RATE(mvm,
             "try to aggregate tid %d\n",
             tid);
     rs_tl_turn_on_agg(mvm, tid,
         lq_sta, sta);
    }
   }
   rs_set_stay_in_table(mvm, 0, lq_sta);
  }
 }

out:
 tbl->current_rate = rate_n_flags_from_tbl(mvm, tbl, index, is_green);
 lq_sta->last_txrate_idx = index;
}
