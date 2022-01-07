
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct iwl_tx_cmd {int rate_n_flags; int tx_flags; scalar_t__ initial_rate_index; int data_retry_limit; int rts_retry_limit; } ;
struct iwl_mvm {int mgmt_last_antenna_idx; int fw; TYPE_3__* nvm_data; } ;
struct TYPE_5__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {size_t band; TYPE_2__ control; } ;
struct ieee80211_sta {int dummy; } ;
typedef int __le16 ;
struct TYPE_6__ {int * bands; } ;
struct TYPE_4__ {int flags; int idx; } ;


 int BIT (int ) ;
 int BUILD_BUG_ON (int) ;
 size_t IEEE80211_BAND_5GHZ ;
 int IEEE80211_TX_RC_MCS ;
 int IWL_BAR_DFAULT_RETRY_LIMIT ;
 int IWL_DEFAULT_TX_RETRY ;
 int IWL_FIRST_CCK_RATE ;
 scalar_t__ IWL_FIRST_OFDM_RATE ;
 int IWL_LAST_CCK_RATE ;
 int IWL_MGMT_DFAULT_RETRY_LIMIT ;
 int IWL_RATE_COUNT_LEGACY ;
 int IWL_RTS_DFAULT_RETRY_LIMIT ;
 int RATE_MCS_ANT_POS ;
 int RATE_MCS_CCK_MSK ;
 int TX_CMD_FLG_ACK ;
 int TX_CMD_FLG_BAR ;
 int TX_CMD_FLG_STA_RATE ;
 int WARN_ONCE (int,char*,int) ;
 int cpu_to_le32 (int) ;
 scalar_t__ ieee80211_is_back_req (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 int iwl_fw_valid_tx_ant (int ) ;
 scalar_t__ iwl_mvm_mac80211_idx_to_hwrate (int) ;
 int iwl_mvm_next_antenna (struct iwl_mvm*,int ,int ) ;
 int min (int ,int ) ;
 int rate_lowest_index (int *,struct ieee80211_sta*) ;

__attribute__((used)) static void iwl_mvm_set_tx_cmd_rate(struct iwl_mvm *mvm,
        struct iwl_tx_cmd *tx_cmd,
        struct ieee80211_tx_info *info,
        struct ieee80211_sta *sta,
        __le16 fc)
{
 u32 rate_flags;
 int rate_idx;
 u8 rate_plcp;


 tx_cmd->rts_retry_limit = IWL_RTS_DFAULT_RETRY_LIMIT;


 if (ieee80211_is_probe_resp(fc)) {
  tx_cmd->data_retry_limit = IWL_MGMT_DFAULT_RETRY_LIMIT;
  tx_cmd->rts_retry_limit =
   min(tx_cmd->data_retry_limit, tx_cmd->rts_retry_limit);
 } else if (ieee80211_is_back_req(fc)) {
  tx_cmd->data_retry_limit = IWL_BAR_DFAULT_RETRY_LIMIT;
 } else {
  tx_cmd->data_retry_limit = IWL_DEFAULT_TX_RETRY;
 }






 if (ieee80211_is_data(fc) && sta) {
  tx_cmd->initial_rate_index = 0;
  tx_cmd->tx_flags |= cpu_to_le32(TX_CMD_FLG_STA_RATE);
  return;
 } else if (ieee80211_is_back_req(fc)) {
  tx_cmd->tx_flags |=
   cpu_to_le32(TX_CMD_FLG_ACK | TX_CMD_FLG_BAR);
 }


 WARN_ONCE(info->control.rates[0].flags & IEEE80211_TX_RC_MCS,
    "Got an HT rate for a non data frame 0x%x\n",
    info->control.rates[0].flags);

 rate_idx = info->control.rates[0].idx;

 if (rate_idx < 0 || rate_idx > IWL_RATE_COUNT_LEGACY)
  rate_idx = rate_lowest_index(
    &mvm->nvm_data->bands[info->band], sta);


 if (info->band == IEEE80211_BAND_5GHZ)
  rate_idx += IWL_FIRST_OFDM_RATE;


 BUILD_BUG_ON(IWL_FIRST_CCK_RATE != 0);


 rate_plcp = iwl_mvm_mac80211_idx_to_hwrate(rate_idx);

 mvm->mgmt_last_antenna_idx =
  iwl_mvm_next_antenna(mvm, iwl_fw_valid_tx_ant(mvm->fw),
         mvm->mgmt_last_antenna_idx);
 rate_flags = BIT(mvm->mgmt_last_antenna_idx) << RATE_MCS_ANT_POS;


 if ((rate_idx >= IWL_FIRST_CCK_RATE) && (rate_idx <= IWL_LAST_CCK_RATE))
  rate_flags |= RATE_MCS_CCK_MSK;


 tx_cmd->rate_n_flags = cpu_to_le32((u32)rate_plcp | rate_flags);
}
