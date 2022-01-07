
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct il_priv {int retry_rate; } ;
struct il3945_rs_sta {int flush_pending; int lock; scalar_t__ flush_time; int rate_scale_flush; scalar_t__ last_partial_flush; scalar_t__ last_flush; int * win; int tx_packets; int il; } ;
struct TYPE_6__ {TYPE_2__* rates; } ;
struct ieee80211_tx_info {long flags; TYPE_3__ status; } ;
struct ieee80211_supported_band {TYPE_1__* bitrates; } ;
struct ieee80211_sta {int dummy; } ;
typedef int s8 ;
struct TYPE_5__ {int count; size_t idx; } ;
struct TYPE_4__ {int hw_value; } ;


 int D_RATE (char*,...) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 long IEEE80211_TX_STAT_ACK ;
 int RATE_COUNT_3945 ;
 int RATE_RETRY_TH ;
 int il3945_collect_tx_data (struct il3945_rs_sta*,int *,long,int,int) ;
 int il3945_rs_next_rate (struct il_priv*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
il3945_rs_tx_status(void *il_rate, struct ieee80211_supported_band *sband,
      struct ieee80211_sta *sta, void *il_sta,
      struct sk_buff *skb)
{
 s8 retries = 0, current_count;
 int scale_rate_idx, first_idx, last_idx;
 unsigned long flags;
 struct il_priv *il = (struct il_priv *)il_rate;
 struct il3945_rs_sta *rs_sta = il_sta;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);

 D_RATE("enter\n");

 retries = info->status.rates[0].count;

 if (retries > RATE_RETRY_TH)
  retries = RATE_RETRY_TH;

 first_idx = sband->bitrates[info->status.rates[0].idx].hw_value;
 if (first_idx < 0 || first_idx >= RATE_COUNT_3945) {
  D_RATE("leave: Rate out of bounds: %d\n", first_idx);
  return;
 }

 if (!il_sta) {
  D_RATE("leave: No STA il data to update!\n");
  return;
 }


 if (!rs_sta->il) {
  D_RATE("leave: STA il data uninitialized!\n");
  return;
 }

 rs_sta->tx_packets++;

 scale_rate_idx = first_idx;
 last_idx = first_idx;
 while (retries > 1) {
  if ((retries - 1) < il->retry_rate) {
   current_count = (retries - 1);
   last_idx = scale_rate_idx;
  } else {
   current_count = il->retry_rate;
   last_idx = il3945_rs_next_rate(il, scale_rate_idx);
  }



  il3945_collect_tx_data(rs_sta, &rs_sta->win[scale_rate_idx], 0,
           current_count, scale_rate_idx);
  D_RATE("Update rate %d for %d retries.\n", scale_rate_idx,
         current_count);

  retries -= current_count;

  scale_rate_idx = last_idx;
 }


 D_RATE("Update rate %d with %s.\n", last_idx,
        (info->flags & IEEE80211_TX_STAT_ACK) ? "success" : "failure");
 il3945_collect_tx_data(rs_sta, &rs_sta->win[last_idx],
          info->flags & IEEE80211_TX_STAT_ACK, 1,
          last_idx);




 spin_lock_irqsave(&rs_sta->lock, flags);

 if (!rs_sta->flush_pending &&
     time_after(jiffies, rs_sta->last_flush + rs_sta->flush_time)) {

  rs_sta->last_partial_flush = jiffies;
  rs_sta->flush_pending = 1;
  mod_timer(&rs_sta->rate_scale_flush,
     jiffies + rs_sta->flush_time);
 }

 spin_unlock_irqrestore(&rs_sta->lock, flags);

 D_RATE("leave\n");
}
