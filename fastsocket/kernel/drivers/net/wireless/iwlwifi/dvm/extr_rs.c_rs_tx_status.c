
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct iwl_station_priv {struct iwl_rxon_context* ctx; } ;
struct iwl_scale_tbl_info {int is_SGI; int is_ht40; int is_dup; int ant_type; int lq_type; } ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {scalar_t__ band; scalar_t__ tm_fixed_rate; TYPE_2__* cfg; } ;
struct iwl_op_mode {int dummy; } ;
struct iwl_link_quality_cmd {TYPE_3__* rs_table; } ;
struct iwl_lq_sta {scalar_t__ missed_rate_counter; size_t active_tbl; int total_success; int total_failed; int last_rate_n_flags; scalar_t__ dbg_fixed_rate; scalar_t__ stay_in_tbl; struct iwl_scale_tbl_info* lq_info; struct iwl_link_quality_cmd lq; int drv; } ;
struct TYPE_10__ {int antenna; int ampdu_len; int ampdu_ack_len; TYPE_4__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_5__ status; } ;
struct ieee80211_supported_band {size_t band; } ;
struct ieee80211_sta {scalar_t__* supp_rates; scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef enum mac80211_rate_control_flags { ____Placeholder_mac80211_rate_control_flags } mac80211_rate_control_flags ;
struct TYPE_9__ {int flags; int idx; int count; } ;
struct TYPE_8__ {int rate_n_flags; } ;
struct TYPE_7__ {TYPE_1__* bt_params; } ;
struct TYPE_6__ {scalar_t__ advanced_bt_coexist; } ;


 int CMD_ASYNC ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_DUP_DATA ;
 int IEEE80211_TX_RC_GREEN_FIELD ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int IEEE80211_TX_STAT_ACK ;
 int IEEE80211_TX_STAT_AMPDU ;
 int IWL_DEBUG_RATE (struct iwl_priv*,char*,...) ;
 int IWL_DEBUG_RATE_LIMIT (struct iwl_priv*,char*) ;
 int IWL_FIRST_OFDM_RATE ;
 scalar_t__ IWL_MISSED_RATE_MAX ;
 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;
 int IWL_RATE_9M_INDEX ;
 int RATE_MCS_CODE_MSK ;
 int RATE_MCS_GF_MSK ;
 int RATE_MCS_HT_MSK ;
 int ieee80211_is_data (int ) ;
 int iwl_send_lq_cmd (struct iwl_priv*,struct iwl_rxon_context*,struct iwl_link_quality_cmd*,int ,int) ;
 int le32_to_cpu (int ) ;
 int min (int,int) ;
 int rs_bt_update_lq (struct iwl_priv*,struct iwl_rxon_context*,struct iwl_lq_sta*) ;
 int rs_collect_tx_data (struct iwl_scale_tbl_info*,int,int,int) ;
 int rs_get_tbl_info_from_mcs (int,scalar_t__,struct iwl_scale_tbl_info*,int*) ;
 int rs_program_fix_rate (struct iwl_priv*,struct iwl_lq_sta*) ;
 int rs_rate_scale_perform (struct iwl_priv*,struct sk_buff*,struct ieee80211_sta*,struct iwl_lq_sta*) ;
 int rs_stay_in_table (struct iwl_lq_sta*,int) ;
 scalar_t__ table_type_matches (struct iwl_scale_tbl_info*,struct iwl_scale_tbl_info*) ;

__attribute__((used)) static void rs_tx_status(void *priv_r, struct ieee80211_supported_band *sband,
    struct ieee80211_sta *sta, void *priv_sta,
    struct sk_buff *skb)
{
 int legacy_success;
 int retries;
 int rs_index, mac_index, i;
 struct iwl_lq_sta *lq_sta = priv_sta;
 struct iwl_link_quality_cmd *table;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct iwl_op_mode *op_mode = (struct iwl_op_mode *)priv_r;
 struct iwl_priv *priv = IWL_OP_MODE_GET_DVM(op_mode);
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 enum mac80211_rate_control_flags mac_flags;
 u32 tx_rate;
 struct iwl_scale_tbl_info tbl_type;
 struct iwl_scale_tbl_info *curr_tbl, *other_tbl, *tmp_tbl;
 struct iwl_station_priv *sta_priv = (void *)sta->drv_priv;
 struct iwl_rxon_context *ctx = sta_priv->ctx;

 IWL_DEBUG_RATE_LIMIT(priv, "get frame ack response, update rate scale window\n");


 if (!lq_sta) {
  IWL_DEBUG_RATE(priv, "Station rate scaling not created yet.\n");
  return;
 } else if (!lq_sta->drv) {
  IWL_DEBUG_RATE(priv, "Rate scaling not initialized yet.\n");
  return;
 }

 if (!ieee80211_is_data(hdr->frame_control) ||
     info->flags & IEEE80211_TX_CTL_NO_ACK)
  return;


 if ((info->flags & IEEE80211_TX_CTL_AMPDU) &&
     !(info->flags & IEEE80211_TX_STAT_AMPDU))
  return;
 table = &lq_sta->lq;
 tx_rate = le32_to_cpu(table->rs_table[0].rate_n_flags);
 rs_get_tbl_info_from_mcs(tx_rate, priv->band, &tbl_type, &rs_index);
 if (priv->band == IEEE80211_BAND_5GHZ)
  rs_index -= IWL_FIRST_OFDM_RATE;
 mac_flags = info->status.rates[0].flags;
 mac_index = info->status.rates[0].idx;

 if (mac_flags & IEEE80211_TX_RC_MCS) {
  mac_index &= RATE_MCS_CODE_MSK;
  if (mac_index >= (IWL_RATE_9M_INDEX - IWL_FIRST_OFDM_RATE))
   mac_index++;




  if (priv->band == IEEE80211_BAND_2GHZ)
   mac_index += IWL_FIRST_OFDM_RATE;
 }

 if ((mac_index < 0) ||
     (tbl_type.is_SGI != !!(mac_flags & IEEE80211_TX_RC_SHORT_GI)) ||
     (tbl_type.is_ht40 != !!(mac_flags & IEEE80211_TX_RC_40_MHZ_WIDTH)) ||
     (tbl_type.is_dup != !!(mac_flags & IEEE80211_TX_RC_DUP_DATA)) ||
     (tbl_type.ant_type != info->status.antenna) ||
     (!!(tx_rate & RATE_MCS_HT_MSK) != !!(mac_flags & IEEE80211_TX_RC_MCS)) ||
     (!!(tx_rate & RATE_MCS_GF_MSK) != !!(mac_flags & IEEE80211_TX_RC_GREEN_FIELD)) ||
     (rs_index != mac_index)) {
  IWL_DEBUG_RATE(priv, "initial rate %d does not match %d (0x%x)\n", mac_index, rs_index, tx_rate);





  lq_sta->missed_rate_counter++;
  if (lq_sta->missed_rate_counter > IWL_MISSED_RATE_MAX) {
   lq_sta->missed_rate_counter = 0;
   iwl_send_lq_cmd(priv, ctx, &lq_sta->lq, CMD_ASYNC, 0);
  }

  return;
 } else

  lq_sta->missed_rate_counter = 0;


 if (table_type_matches(&tbl_type,
    &(lq_sta->lq_info[lq_sta->active_tbl]))) {
  curr_tbl = &(lq_sta->lq_info[lq_sta->active_tbl]);
  other_tbl = &(lq_sta->lq_info[1 - lq_sta->active_tbl]);
 } else if (table_type_matches(&tbl_type,
    &lq_sta->lq_info[1 - lq_sta->active_tbl])) {
  curr_tbl = &(lq_sta->lq_info[1 - lq_sta->active_tbl]);
  other_tbl = &(lq_sta->lq_info[lq_sta->active_tbl]);
 } else {
  IWL_DEBUG_RATE(priv, "Neither active nor search matches tx rate\n");
  tmp_tbl = &(lq_sta->lq_info[lq_sta->active_tbl]);
  IWL_DEBUG_RATE(priv, "active- lq:%x, ant:%x, SGI:%d\n",
   tmp_tbl->lq_type, tmp_tbl->ant_type, tmp_tbl->is_SGI);
  tmp_tbl = &(lq_sta->lq_info[1 - lq_sta->active_tbl]);
  IWL_DEBUG_RATE(priv, "search- lq:%x, ant:%x, SGI:%d\n",
   tmp_tbl->lq_type, tmp_tbl->ant_type, tmp_tbl->is_SGI);
  IWL_DEBUG_RATE(priv, "actual- lq:%x, ant:%x, SGI:%d\n",
   tbl_type.lq_type, tbl_type.ant_type, tbl_type.is_SGI);




  rs_stay_in_table(lq_sta, 1);
  goto done;
 }
 if (info->flags & IEEE80211_TX_STAT_AMPDU) {
  tx_rate = le32_to_cpu(table->rs_table[0].rate_n_flags);
  rs_get_tbl_info_from_mcs(tx_rate, priv->band, &tbl_type,
    &rs_index);
  rs_collect_tx_data(curr_tbl, rs_index,
       info->status.ampdu_len,
       info->status.ampdu_ack_len);


  if (lq_sta->stay_in_tbl) {
   lq_sta->total_success += info->status.ampdu_ack_len;
   lq_sta->total_failed += (info->status.ampdu_len -
     info->status.ampdu_ack_len);
  }
 } else {



  retries = info->status.rates[0].count - 1;

  retries = min(retries, 15);


  legacy_success = !!(info->flags & IEEE80211_TX_STAT_ACK);

  for (i = 0; i <= retries; ++i) {
   tx_rate = le32_to_cpu(table->rs_table[i].rate_n_flags);
   rs_get_tbl_info_from_mcs(tx_rate, priv->band,
     &tbl_type, &rs_index);




   if (table_type_matches(&tbl_type, curr_tbl))
    tmp_tbl = curr_tbl;
   else if (table_type_matches(&tbl_type, other_tbl))
    tmp_tbl = other_tbl;
   else
    continue;
   rs_collect_tx_data(tmp_tbl, rs_index, 1,
        i < retries ? 0 : legacy_success);
  }


  if (lq_sta->stay_in_tbl) {
   lq_sta->total_success += legacy_success;
   lq_sta->total_failed += retries + (1 - legacy_success);
  }
 }

 lq_sta->last_rate_n_flags = tx_rate;
done:

 if (sta && sta->supp_rates[sband->band])
  rs_rate_scale_perform(priv, skb, sta, lq_sta);






 if (priv->cfg->bt_params && priv->cfg->bt_params->advanced_bt_coexist)
  rs_bt_update_lq(priv, ctx, lq_sta);
}
