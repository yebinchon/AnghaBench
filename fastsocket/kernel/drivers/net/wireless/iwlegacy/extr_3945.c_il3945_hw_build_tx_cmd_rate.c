
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct il_priv {int hw; } ;
struct TYPE_4__ {scalar_t__ payload; } ;
struct il_device_cmd {TYPE_1__ cmd; } ;
struct il3945_tx_cmd {int data_retry_limit; int rate; int* supp_rates; int tx_flags; void* rts_retry_limit; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_6__ {int hw_value; } ;
struct TYPE_5__ {int plcp; } ;


 int D_RATE (char*,int,int,int ,int,int) ;
 int IL_DEFAULT_TX_RETRY ;
 int IL_FIRST_OFDM_RATE ;
 int IL_OFDM_RATES_MASK ;
 int RATES_MASK_3945 ;
 int const RATE_COUNT_3945 ;
 TYPE_3__* ieee80211_get_tx_rate (int ,struct ieee80211_tx_info*) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 TYPE_2__* il3945_rates ;
 int le32_to_cpu (int ) ;
 void* min (int,int const) ;

void
il3945_hw_build_tx_cmd_rate(struct il_priv *il, struct il_device_cmd *cmd,
       struct ieee80211_tx_info *info,
       struct ieee80211_hdr *hdr, int sta_id)
{
 u16 hw_value = ieee80211_get_tx_rate(il->hw, info)->hw_value;
 u16 rate_idx = min(hw_value & 0xffff, RATE_COUNT_3945 - 1);
 u16 rate_mask;
 int rate;
 const u8 rts_retry_limit = 7;
 u8 data_retry_limit;
 __le32 tx_flags;
 __le16 fc = hdr->frame_control;
 struct il3945_tx_cmd *tx_cmd = (struct il3945_tx_cmd *)cmd->cmd.payload;

 rate = il3945_rates[rate_idx].plcp;
 tx_flags = tx_cmd->tx_flags;



 rate_mask = RATES_MASK_3945;


 if (ieee80211_is_probe_resp(fc))
  data_retry_limit = 3;
 else
  data_retry_limit = IL_DEFAULT_TX_RETRY;
 tx_cmd->data_retry_limit = data_retry_limit;

 tx_cmd->rts_retry_limit = min(data_retry_limit, rts_retry_limit);

 tx_cmd->rate = rate;
 tx_cmd->tx_flags = tx_flags;


 tx_cmd->supp_rates[0] =
     ((rate_mask & IL_OFDM_RATES_MASK) >> IL_FIRST_OFDM_RATE) & 0xFF;


 tx_cmd->supp_rates[1] = (rate_mask & 0xF);

 D_RATE("Tx sta id: %d, rate: %d (plcp), flags: 0x%4X "
        "cck/ofdm mask: 0x%x/0x%x\n", sta_id, tx_cmd->rate,
        le32_to_cpu(tx_cmd->tx_flags), tx_cmd->supp_rates[1],
        tx_cmd->supp_rates[0]);
}
