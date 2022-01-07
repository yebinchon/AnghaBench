
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct il_tx_cmd {int data_retry_limit; int rate_n_flags; int tx_flags; scalar_t__ initial_rate_idx; int rts_retry_limit; } ;
struct TYPE_7__ {int valid_tx_ant; } ;
struct il_priv {int mgmt_tx_ant; TYPE_3__ hw_params; int * bands; } ;
struct TYPE_6__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {size_t band; TYPE_2__ control; } ;
struct ieee80211_sta {int dummy; } ;
typedef int __le16 ;
struct TYPE_8__ {int plcp; } ;
struct TYPE_5__ {int idx; int flags; } ;


 int BIT (int ) ;
 size_t IEEE80211_BAND_5GHZ ;
 int IEEE80211_TX_RC_MCS ;
 int IL4965_DEFAULT_TX_RETRY ;
 int IL_FIRST_CCK_RATE ;
 scalar_t__ IL_FIRST_OFDM_RATE ;
 int IL_LAST_CCK_RATE ;
 int RATE_COUNT_LEGACY ;
 int RATE_MCS_ANT_POS ;
 int RATE_MCS_CCK_MSK ;
 int TX_CMD_FLG_STA_RATE_MSK ;
 int cpu_to_le32 (int) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 int il4965_toggle_tx_ant (struct il_priv*,int *,int ) ;
 TYPE_4__* il_rates ;
 int min (int,int const) ;
 int rate_lowest_index (int *,struct ieee80211_sta*) ;

__attribute__((used)) static void
il4965_tx_cmd_build_rate(struct il_priv *il,
    struct il_tx_cmd *tx_cmd,
    struct ieee80211_tx_info *info,
    struct ieee80211_sta *sta,
    __le16 fc)
{
 const u8 rts_retry_limit = 60;
 u32 rate_flags;
 int rate_idx;
 u8 data_retry_limit;
 u8 rate_plcp;


 if (ieee80211_is_probe_resp(fc))
  data_retry_limit = 3;
 else
  data_retry_limit = IL4965_DEFAULT_TX_RETRY;
 tx_cmd->data_retry_limit = data_retry_limit;

 tx_cmd->rts_retry_limit = min(data_retry_limit, rts_retry_limit);



 if (ieee80211_is_data(fc)) {
  tx_cmd->initial_rate_idx = 0;
  tx_cmd->tx_flags |= TX_CMD_FLG_STA_RATE_MSK;
  return;
 }







 rate_idx = info->control.rates[0].idx;
 if ((info->control.rates[0].flags & IEEE80211_TX_RC_MCS) || rate_idx < 0
     || rate_idx > RATE_COUNT_LEGACY)
  rate_idx = rate_lowest_index(&il->bands[info->band], sta);

 if (info->band == IEEE80211_BAND_5GHZ)
  rate_idx += IL_FIRST_OFDM_RATE;

 rate_plcp = il_rates[rate_idx].plcp;

 rate_flags = 0;


 if (rate_idx >= IL_FIRST_CCK_RATE && rate_idx <= IL_LAST_CCK_RATE)
  rate_flags |= RATE_MCS_CCK_MSK;


 il4965_toggle_tx_ant(il, &il->mgmt_tx_ant, il->hw_params.valid_tx_ant);
 rate_flags |= BIT(il->mgmt_tx_ant) << RATE_MCS_ANT_POS;


 tx_cmd->rate_n_flags = cpu_to_le32(rate_plcp | rate_flags);
}
