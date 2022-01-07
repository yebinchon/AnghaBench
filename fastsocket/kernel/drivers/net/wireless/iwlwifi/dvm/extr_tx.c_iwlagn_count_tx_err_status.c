
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int unknown; int sta_color_mismatch; int fail_hw_drop; int insuff_cf_poll; int fifo_flush; int tid_disable; int frag_drop; int sta_invalid; int bt_retry; int host_abort; int dest_ps; int life_expire; int rfkill_flush; int drain_flow; int fifo_underrun; int long_limit; int short_limit; int int_crossed_retry; int pp_calc_ttak; int pp_quiet_period; int pp_bt_prio; int pp_few_bytes; int pp_delay; } ;
struct iwl_priv {TYPE_1__ reply_tx_stats; } ;
 int TX_STATUS_MSK ;






__attribute__((used)) static void iwlagn_count_tx_err_status(struct iwl_priv *priv, u16 status)
{
 status &= TX_STATUS_MSK;

 switch (status) {
 case 130:
  priv->reply_tx_stats.pp_delay++;
  break;
 case 129:
  priv->reply_tx_stats.pp_few_bytes++;
  break;
 case 132:
  priv->reply_tx_stats.pp_bt_prio++;
  break;
 case 128:
  priv->reply_tx_stats.pp_quiet_period++;
  break;
 case 131:
  priv->reply_tx_stats.pp_calc_ttak++;
  break;
 case 141:
  priv->reply_tx_stats.int_crossed_retry++;
  break;
 case 135:
  priv->reply_tx_stats.short_limit++;
  break;
 case 139:
  priv->reply_tx_stats.long_limit++;
  break;
 case 145:
  priv->reply_tx_stats.fifo_underrun++;
  break;
 case 147:
  priv->reply_tx_stats.drain_flow++;
  break;
 case 136:
  priv->reply_tx_stats.rfkill_flush++;
  break;
 case 140:
  priv->reply_tx_stats.life_expire++;
  break;
 case 148:
  priv->reply_tx_stats.dest_ps++;
  break;
 case 143:
  priv->reply_tx_stats.host_abort++;
  break;
 case 149:
  priv->reply_tx_stats.bt_retry++;
  break;
 case 134:
  priv->reply_tx_stats.sta_invalid++;
  break;
 case 144:
  priv->reply_tx_stats.frag_drop++;
  break;
 case 133:
  priv->reply_tx_stats.tid_disable++;
  break;
 case 146:
  priv->reply_tx_stats.fifo_flush++;
  break;
 case 142:
  priv->reply_tx_stats.insuff_cf_poll++;
  break;
 case 137:
  priv->reply_tx_stats.fail_hw_drop++;
  break;
 case 138:
  priv->reply_tx_stats.sta_color_mismatch++;
  break;
 default:
  priv->reply_tx_stats.unknown++;
  break;
 }
}
