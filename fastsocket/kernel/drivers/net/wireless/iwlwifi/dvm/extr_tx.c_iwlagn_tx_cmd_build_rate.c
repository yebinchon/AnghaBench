
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct iwl_tx_cmd {int rate_n_flags; int tx_flags; scalar_t__ initial_rate_index; void* rts_retry_limit; void* data_retry_limit; } ;
struct iwl_priv {void* mgmt_tx_ant; TYPE_5__* nvm_data; scalar_t__ bt_full_concurrent; TYPE_4__* cfg; scalar_t__ tm_fixed_rate; scalar_t__ wowlan; } ;
struct TYPE_8__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {size_t band; TYPE_2__ control; } ;
struct ieee80211_sta {int dummy; } ;
typedef int __le16 ;
struct TYPE_12__ {void* plcp; } ;
struct TYPE_11__ {int valid_tx_ant; int * bands; } ;
struct TYPE_10__ {TYPE_3__* bt_params; } ;
struct TYPE_9__ {scalar_t__ advanced_bt_coexist; } ;
struct TYPE_7__ {int idx; int flags; } ;


 size_t IEEE80211_BAND_5GHZ ;
 int IEEE80211_TX_RC_MCS ;
 void* IWLAGN_BAR_DFAULT_RETRY_LIMIT ;
 void* IWLAGN_DEFAULT_TX_RETRY ;
 void* IWLAGN_LOW_RETRY_LIMIT ;
 void* IWLAGN_MGMT_DFAULT_RETRY_LIMIT ;
 void* IWLAGN_RTS_DFAULT_RETRY_LIMIT ;
 int IWL_FIRST_CCK_RATE ;
 scalar_t__ IWL_FIRST_OFDM_RATE ;
 int IWL_LAST_CCK_RATE ;
 int IWL_RATE_COUNT_LEGACY ;
 int RATE_MCS_CCK_MSK ;
 int TX_CMD_FLG_STA_RATE_MSK ;
 int first_antenna (int ) ;
 scalar_t__ ieee80211_is_back_req (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 int iwl_ant_idx_to_flags (void*) ;
 int iwl_hw_set_rate_n_flags (void*,int ) ;
 TYPE_6__* iwl_rates ;
 void* iwl_toggle_tx_ant (struct iwl_priv*,void*,int ) ;
 int memcpy (int *,scalar_t__*,int) ;
 void* min (void*,void*) ;
 int rate_lowest_index (int *,struct ieee80211_sta*) ;

__attribute__((used)) static void iwlagn_tx_cmd_build_rate(struct iwl_priv *priv,
         struct iwl_tx_cmd *tx_cmd,
         struct ieee80211_tx_info *info,
         struct ieee80211_sta *sta,
         __le16 fc)
{
 u32 rate_flags;
 int rate_idx;
 u8 rts_retry_limit;
 u8 data_retry_limit;
 u8 rate_plcp;

 if (priv->wowlan) {
  rts_retry_limit = IWLAGN_LOW_RETRY_LIMIT;
  data_retry_limit = IWLAGN_LOW_RETRY_LIMIT;
 } else {

  rts_retry_limit = IWLAGN_RTS_DFAULT_RETRY_LIMIT;


  if (ieee80211_is_probe_resp(fc)) {
   data_retry_limit = IWLAGN_MGMT_DFAULT_RETRY_LIMIT;
   rts_retry_limit =
    min(data_retry_limit, rts_retry_limit);
  } else if (ieee80211_is_back_req(fc))
   data_retry_limit = IWLAGN_BAR_DFAULT_RETRY_LIMIT;
  else
   data_retry_limit = IWLAGN_DEFAULT_TX_RETRY;
 }

 tx_cmd->data_retry_limit = data_retry_limit;
 tx_cmd->rts_retry_limit = rts_retry_limit;



 if (ieee80211_is_data(fc)) {
  tx_cmd->initial_rate_index = 0;
  tx_cmd->tx_flags |= TX_CMD_FLG_STA_RATE_MSK;
  return;
 } else if (ieee80211_is_back_req(fc))
  tx_cmd->tx_flags |= TX_CMD_FLG_STA_RATE_MSK;







 rate_idx = info->control.rates[0].idx;
 if (info->control.rates[0].flags & IEEE80211_TX_RC_MCS ||
   (rate_idx < 0) || (rate_idx > IWL_RATE_COUNT_LEGACY))
  rate_idx = rate_lowest_index(
    &priv->nvm_data->bands[info->band], sta);

 if (info->band == IEEE80211_BAND_5GHZ)
  rate_idx += IWL_FIRST_OFDM_RATE;

 rate_plcp = iwl_rates[rate_idx].plcp;

 rate_flags = 0;


 if ((rate_idx >= IWL_FIRST_CCK_RATE) && (rate_idx <= IWL_LAST_CCK_RATE))
  rate_flags |= RATE_MCS_CCK_MSK;


  if (priv->cfg->bt_params &&
      priv->cfg->bt_params->advanced_bt_coexist &&
      priv->bt_full_concurrent) {

  priv->mgmt_tx_ant = iwl_toggle_tx_ant(priv, priv->mgmt_tx_ant,
    first_antenna(priv->nvm_data->valid_tx_ant));
 } else
  priv->mgmt_tx_ant = iwl_toggle_tx_ant(
     priv, priv->mgmt_tx_ant,
     priv->nvm_data->valid_tx_ant);
 rate_flags |= iwl_ant_idx_to_flags(priv->mgmt_tx_ant);


 tx_cmd->rate_n_flags = iwl_hw_set_rate_n_flags(rate_plcp, rate_flags);
}
