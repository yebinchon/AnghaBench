
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_scale_tbl_info {int action; int is_SGI; int* expected_tpt; int lq_type; int current_rate; int is_ht40; int ant_type; struct iwl_rate_scale_data* win; } ;
struct iwl_rate_scale_data {int success_ratio; } ;
struct iwl_mvm {int fw; } ;
struct iwl_lq_sta {size_t active_tbl; int last_tpt; int search_better_tbl; int action_counter; struct iwl_scale_tbl_info* lq_info; int is_green; } ;
struct ieee80211_sta_ht_cap {int cap; } ;
struct ieee80211_sta {struct ieee80211_sta_ht_cap ht_cap; } ;
typedef int s8 ;
typedef int s32 ;


 int ANT_A ;
 int ANT_AB ;
 int ANT_AC ;
 int ANT_B ;
 int ANT_BC ;
 int ANT_C ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IWL_DEBUG_RATE (struct iwl_mvm*,char*) ;
 int IWL_RATE_COUNT ;
 int IWL_RS_GOOD_RATIO ;
 int LQ_NONE ;
 int iwl_fw_valid_tx_ant (int ) ;
 int memcpy (struct iwl_scale_tbl_info*,struct iwl_scale_tbl_info*,int) ;
 int num_of_ant (int) ;
 int rate_n_flags_from_tbl (struct iwl_mvm*,struct iwl_scale_tbl_info*,int,int ) ;
 int rs_is_valid_ant (int,int ) ;
 int rs_set_expected_tpt_table (struct iwl_lq_sta*,struct iwl_scale_tbl_info*) ;
 int rs_switch_to_mimo2 (struct iwl_mvm*,struct iwl_lq_sta*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ;
 int rs_switch_to_siso (struct iwl_mvm*,struct iwl_lq_sta*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ;
 int rs_toggle_antenna (int,int *,struct iwl_scale_tbl_info*) ;

__attribute__((used)) static int rs_move_mimo3_to_other(struct iwl_mvm *mvm,
     struct iwl_lq_sta *lq_sta,
     struct ieee80211_sta *sta, int index)
{
 s8 is_green = lq_sta->is_green;
 struct iwl_scale_tbl_info *tbl = &(lq_sta->lq_info[lq_sta->active_tbl]);
 struct iwl_scale_tbl_info *search_tbl =
    &(lq_sta->lq_info[(1 - lq_sta->active_tbl)]);
 struct iwl_rate_scale_data *window = &(tbl->win[index]);
 struct ieee80211_sta_ht_cap *ht_cap = &sta->ht_cap;
 u32 sz = (sizeof(struct iwl_scale_tbl_info) -
    (sizeof(struct iwl_rate_scale_data) * IWL_RATE_COUNT));
 u8 start_action;
 u8 valid_tx_ant = iwl_fw_valid_tx_ant(mvm->fw);
 u8 tx_chains_num = num_of_ant(valid_tx_ant);
 int ret;
 u8 update_search_tbl_counter = 0;

 start_action = tbl->action;
 while (1) {
  lq_sta->action_counter++;
  switch (tbl->action) {
  case 136:
  case 135:
   IWL_DEBUG_RATE(mvm, "LQ: MIMO3 toggle Antennas\n");

   if (tx_chains_num <= 3)
    break;

   if (window->success_ratio >= IWL_RS_GOOD_RATIO)
    break;

   memcpy(search_tbl, tbl, sz);
   if (rs_toggle_antenna(valid_tx_ant,
           &search_tbl->current_rate,
           search_tbl))
    goto out;
   break;
  case 130:
  case 129:
  case 128:
   IWL_DEBUG_RATE(mvm, "LQ: MIMO3 switch to SISO\n");


   memcpy(search_tbl, tbl, sz);

   if (tbl->action == 130)
    search_tbl->ant_type = ANT_A;
   else if (tbl->action == 129)
    search_tbl->ant_type = ANT_B;
   else
    search_tbl->ant_type = ANT_C;

   if (!rs_is_valid_ant(valid_tx_ant,
          search_tbl->ant_type))
    break;

   ret = rs_switch_to_siso(mvm, lq_sta, sta,
      search_tbl, index);
   if (!ret)
    goto out;

   break;

  case 133:
  case 132:
  case 131:
   IWL_DEBUG_RATE(mvm, "LQ: MIMO3 switch to MIMO2\n");

   memcpy(search_tbl, tbl, sz);
   search_tbl->is_SGI = 0;
   if (tbl->action == 133)
    search_tbl->ant_type = ANT_AB;
   else if (tbl->action == 132)
    search_tbl->ant_type = ANT_AC;
   else
    search_tbl->ant_type = ANT_BC;

   if (!rs_is_valid_ant(valid_tx_ant,
          search_tbl->ant_type))
    break;

   ret = rs_switch_to_mimo2(mvm, lq_sta, sta,
       search_tbl, index);
   if (!ret)
    goto out;

   break;

  case 134:
   if (!tbl->is_ht40 && !(ht_cap->cap &
      IEEE80211_HT_CAP_SGI_20))
    break;
   if (tbl->is_ht40 && !(ht_cap->cap &
      IEEE80211_HT_CAP_SGI_40))
    break;

   IWL_DEBUG_RATE(mvm, "LQ: MIMO3 toggle SGI/NGI\n");


   memcpy(search_tbl, tbl, sz);
   search_tbl->is_SGI = !tbl->is_SGI;
   rs_set_expected_tpt_table(lq_sta, search_tbl);






   if (tbl->is_SGI) {
    s32 tpt = lq_sta->last_tpt / 100;
    if (tpt >= search_tbl->expected_tpt[index])
     break;
   }
   search_tbl->current_rate =
    rate_n_flags_from_tbl(mvm, search_tbl,
            index, is_green);
   update_search_tbl_counter = 1;
   goto out;
  }
  tbl->action++;
  if (tbl->action > 134)
   tbl->action = 136;

  if (tbl->action == start_action)
   break;
 }
 search_tbl->lq_type = LQ_NONE;
 return 0;
 out:
 lq_sta->search_better_tbl = 1;
 tbl->action++;
 if (tbl->action > 134)
  tbl->action = 136;
 if (update_search_tbl_counter)
  search_tbl->action = tbl->action;

 return 0;
}
