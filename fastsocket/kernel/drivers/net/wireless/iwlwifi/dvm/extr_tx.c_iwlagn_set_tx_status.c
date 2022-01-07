
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int status; } ;
struct iwlagn_tx_resp {int rate_n_flags; scalar_t__ failure_frame; TYPE_1__ status; } ;
struct iwl_priv {int dummy; } ;
struct TYPE_6__ {TYPE_2__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_3__ status; } ;
struct TYPE_5__ {scalar_t__ count; } ;


 int IEEE80211_TX_CTL_AMPDU ;
 int iwl_is_tx_success (int ) ;
 int iwl_tx_status_to_mac80211 (int ) ;
 int iwlagn_count_tx_err_status (struct iwl_priv*,int ) ;
 int iwlagn_hwrate_to_tx_control (struct iwl_priv*,int ,struct ieee80211_tx_info*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void iwlagn_set_tx_status(struct iwl_priv *priv,
     struct ieee80211_tx_info *info,
     struct iwlagn_tx_resp *tx_resp)
{
 u16 status = le16_to_cpu(tx_resp->status.status);

 info->flags &= ~IEEE80211_TX_CTL_AMPDU;

 info->status.rates[0].count = tx_resp->failure_frame + 1;
 info->flags |= iwl_tx_status_to_mac80211(status);
 iwlagn_hwrate_to_tx_control(priv, le32_to_cpu(tx_resp->rate_n_flags),
        info);
 if (!iwl_is_tx_success(status))
  iwlagn_count_tx_err_status(priv, status);
}
