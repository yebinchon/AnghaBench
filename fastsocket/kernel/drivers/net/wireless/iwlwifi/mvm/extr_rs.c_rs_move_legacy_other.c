
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_scale_tbl_info {int action; int lq_type; int ant_type; int is_SGI; int current_rate; struct iwl_rate_scale_data* win; } ;
struct iwl_rate_scale_data {int success_ratio; } ;
struct iwl_mvm {int fw; } ;
struct iwl_lq_sta {size_t active_tbl; int search_better_tbl; scalar_t__ action_counter; struct iwl_scale_tbl_info* lq_info; } ;
struct ieee80211_sta {int dummy; } ;


 int ANT_AB ;
 int ANT_ABC ;
 int ANT_AC ;
 int ANT_BC ;
 int IWL_DEBUG_RATE (struct iwl_mvm*,char*) ;







 int IWL_RATE_COUNT ;
 int IWL_RS_GOOD_RATIO ;
 int LQ_NONE ;
 int iwl_fw_valid_tx_ant (int ) ;
 int memcpy (struct iwl_scale_tbl_info*,struct iwl_scale_tbl_info*,int) ;
 int num_of_ant (int) ;
 int rs_is_valid_ant (int,int ) ;
 int rs_set_expected_tpt_table (struct iwl_lq_sta*,struct iwl_scale_tbl_info*) ;
 int rs_switch_to_mimo2 (struct iwl_mvm*,struct iwl_lq_sta*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ;
 int rs_switch_to_mimo3 (struct iwl_mvm*,struct iwl_lq_sta*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ;
 int rs_switch_to_siso (struct iwl_mvm*,struct iwl_lq_sta*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ;
 int rs_toggle_antenna (int,int *,struct iwl_scale_tbl_info*) ;

__attribute__((used)) static int rs_move_legacy_other(struct iwl_mvm *mvm,
    struct iwl_lq_sta *lq_sta,
    struct ieee80211_sta *sta,
    int index)
{
 struct iwl_scale_tbl_info *tbl = &(lq_sta->lq_info[lq_sta->active_tbl]);
 struct iwl_scale_tbl_info *search_tbl =
    &(lq_sta->lq_info[(1 - lq_sta->active_tbl)]);
 struct iwl_rate_scale_data *window = &(tbl->win[index]);
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
  case 134:
  case 133:
   IWL_DEBUG_RATE(mvm, "LQ: Legacy toggle Antenna\n");

   if ((tbl->action == 134 &&
        tx_chains_num <= 1) ||
       (tbl->action == 133 &&
        tx_chains_num <= 2))
    break;


   if (window->success_ratio >= IWL_RS_GOOD_RATIO)
    break;


   memcpy(search_tbl, tbl, sz);

   if (rs_toggle_antenna(valid_tx_ant,
           &search_tbl->current_rate,
           search_tbl)) {
    update_search_tbl_counter = 1;
    rs_set_expected_tpt_table(lq_sta, search_tbl);
    goto out;
   }
   break;
  case 128:
   IWL_DEBUG_RATE(mvm, "LQ: Legacy switch to SISO\n");


   memcpy(search_tbl, tbl, sz);
   search_tbl->is_SGI = 0;
   ret = rs_switch_to_siso(mvm, lq_sta, sta,
       search_tbl, index);
   if (!ret) {
    lq_sta->action_counter = 0;
    goto out;
   }

   break;
  case 132:
  case 131:
  case 130:
   IWL_DEBUG_RATE(mvm, "LQ: Legacy switch to MIMO2\n");


   memcpy(search_tbl, tbl, sz);
   search_tbl->is_SGI = 0;

   if (tbl->action == 132)
    search_tbl->ant_type = ANT_AB;
   else if (tbl->action == 131)
    search_tbl->ant_type = ANT_AC;
   else
    search_tbl->ant_type = ANT_BC;

   if (!rs_is_valid_ant(valid_tx_ant,
          search_tbl->ant_type))
    break;

   ret = rs_switch_to_mimo2(mvm, lq_sta, sta,
       search_tbl, index);
   if (!ret) {
    lq_sta->action_counter = 0;
    goto out;
   }
   break;

  case 129:
   IWL_DEBUG_RATE(mvm, "LQ: Legacy switch to MIMO3\n");


   memcpy(search_tbl, tbl, sz);
   search_tbl->is_SGI = 0;

   search_tbl->ant_type = ANT_ABC;

   if (!rs_is_valid_ant(valid_tx_ant,
          search_tbl->ant_type))
    break;

   ret = rs_switch_to_mimo3(mvm, lq_sta, sta,
       search_tbl, index);
   if (!ret) {
    lq_sta->action_counter = 0;
    goto out;
   }
   break;
  }
  tbl->action++;
  if (tbl->action > 129)
   tbl->action = 134;

  if (tbl->action == start_action)
   break;
 }
 search_tbl->lq_type = LQ_NONE;
 return 0;

out:
 lq_sta->search_better_tbl = 1;
 tbl->action++;
 if (tbl->action > 129)
  tbl->action = 134;
 if (update_search_tbl_counter)
  search_tbl->action = tbl->action;
 return 0;
}
