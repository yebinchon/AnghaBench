
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_scale_tbl_info {int action; int lq_type; int ant_type; int is_SGI; int current_rate; struct iwl_rate_scale_data* win; } ;
struct iwl_rate_scale_data {int success_ratio; } ;
struct TYPE_3__ {int tx_chains_num; } ;
struct iwl_priv {int bt_traffic_load; scalar_t__ bt_full_concurrent; TYPE_2__* nvm_data; TYPE_1__ hw_params; } ;
struct iwl_lq_sta {size_t active_tbl; int search_better_tbl; scalar_t__ action_counter; struct iwl_scale_tbl_info* lq_info; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_conf {int dummy; } ;
struct TYPE_4__ {int valid_tx_ant; } ;


 int ANT_AB ;
 int ANT_ABC ;
 int ANT_AC ;
 int ANT_BC ;
 scalar_t__ IWL_ANT_OK_SINGLE ;




 int IWL_DEBUG_RATE (struct iwl_priv*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*,int) ;







 int IWL_RATE_COUNT ;
 int IWL_RS_GOOD_RATIO ;
 int LQ_NONE ;
 int first_antenna (int) ;
 int iwl_ht_enabled (struct iwl_priv*) ;
 scalar_t__ iwl_tx_ant_restriction (struct iwl_priv*) ;
 int memcpy (struct iwl_scale_tbl_info*,struct iwl_scale_tbl_info*,int) ;
 int rs_is_valid_ant (int,int ) ;
 int rs_set_expected_tpt_table (struct iwl_lq_sta*,struct iwl_scale_tbl_info*) ;
 int rs_switch_to_mimo2 (struct iwl_priv*,struct iwl_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ;
 int rs_switch_to_mimo3 (struct iwl_priv*,struct iwl_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ;
 int rs_switch_to_siso (struct iwl_priv*,struct iwl_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ;
 int rs_toggle_antenna (int,int *,struct iwl_scale_tbl_info*) ;

__attribute__((used)) static int rs_move_legacy_other(struct iwl_priv *priv,
    struct iwl_lq_sta *lq_sta,
    struct ieee80211_conf *conf,
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
 u8 valid_tx_ant = priv->nvm_data->valid_tx_ant;
 u8 tx_chains_num = priv->hw_params.tx_chains_num;
 int ret = 0;
 u8 update_search_tbl_counter = 0;

 switch (priv->bt_traffic_load) {
 case 135:

  break;
 case 136:

  if (tbl->action == 133)
   tbl->action = 128;
  break;
 case 137:
 case 138:

  valid_tx_ant =
   first_antenna(priv->nvm_data->valid_tx_ant);
  if (tbl->action >= 133 &&
      tbl->action != 128)
   tbl->action = 128;
  break;
 default:
  IWL_ERR(priv, "Invalid BT load %d", priv->bt_traffic_load);
  break;
 }

 if (!iwl_ht_enabled(priv))

  tbl->action = 134;
 else if (iwl_tx_ant_restriction(priv) == IWL_ANT_OK_SINGLE &&
     tbl->action > 128)
  tbl->action = 128;


 if (priv->bt_full_concurrent) {
  if (!iwl_ht_enabled(priv))
   tbl->action = 134;
  else if (tbl->action >= 133)
   tbl->action = 128;
  valid_tx_ant =
   first_antenna(priv->nvm_data->valid_tx_ant);
 }

 start_action = tbl->action;
 for (; ;) {
  lq_sta->action_counter++;
  switch (tbl->action) {
  case 134:
  case 133:
   IWL_DEBUG_RATE(priv, "LQ: Legacy toggle Antenna\n");

   if ((tbl->action == 134 &&
       tx_chains_num <= 1) ||
       (tbl->action == 133 &&
       tx_chains_num <= 2))
    break;


   if (window->success_ratio >= IWL_RS_GOOD_RATIO &&
       !priv->bt_full_concurrent &&
       priv->bt_traffic_load ==
     135)
    break;


   memcpy(search_tbl, tbl, sz);

   if (rs_toggle_antenna(valid_tx_ant,
    &search_tbl->current_rate, search_tbl)) {
    update_search_tbl_counter = 1;
    rs_set_expected_tpt_table(lq_sta, search_tbl);
    goto out;
   }
   break;
  case 128:
   IWL_DEBUG_RATE(priv, "LQ: Legacy switch to SISO\n");


   memcpy(search_tbl, tbl, sz);
   search_tbl->is_SGI = 0;
   ret = rs_switch_to_siso(priv, lq_sta, conf, sta,
       search_tbl, index);
   if (!ret) {
    lq_sta->action_counter = 0;
    goto out;
   }

   break;
  case 132:
  case 131:
  case 130:
   IWL_DEBUG_RATE(priv, "LQ: Legacy switch to MIMO2\n");


   memcpy(search_tbl, tbl, sz);
   search_tbl->is_SGI = 0;

   if (tbl->action == 132)
    search_tbl->ant_type = ANT_AB;
   else if (tbl->action == 131)
    search_tbl->ant_type = ANT_AC;
   else
    search_tbl->ant_type = ANT_BC;

   if (!rs_is_valid_ant(valid_tx_ant, search_tbl->ant_type))
    break;

   ret = rs_switch_to_mimo2(priv, lq_sta, conf, sta,
       search_tbl, index);
   if (!ret) {
    lq_sta->action_counter = 0;
    goto out;
   }
   break;

  case 129:
   IWL_DEBUG_RATE(priv, "LQ: Legacy switch to MIMO3\n");


   memcpy(search_tbl, tbl, sz);
   search_tbl->is_SGI = 0;

   search_tbl->ant_type = ANT_ABC;

   if (!rs_is_valid_ant(valid_tx_ant, search_tbl->ant_type))
    break;

   ret = rs_switch_to_mimo3(priv, lq_sta, conf, sta,
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
