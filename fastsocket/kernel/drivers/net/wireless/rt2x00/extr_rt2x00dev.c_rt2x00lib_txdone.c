
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef unsigned int u8 ;
struct txdone_entry_desc {int retry; int flags; } ;
struct skb_frame_desc {unsigned int flags; unsigned int tx_rate_idx; unsigned int tx_rate_flags; } ;
struct TYPE_13__ {int dot11RTSFailureCount; int dot11RTSSuccessCount; int dot11ACKFailureCount; } ;
struct TYPE_10__ {int tx_success; int tx_failed; } ;
struct TYPE_11__ {TYPE_1__ qual; } ;
struct rt2x00_dev {TYPE_6__* ops; int hw; int cap_flags; TYPE_4__ low_level_stats; TYPE_2__ link; } ;
struct queue_entry {TYPE_7__* queue; scalar_t__ flags; int * skb; } ;
struct TYPE_17__ {int ampdu_len; int ampdu_ack_len; TYPE_3__* rates; scalar_t__ ack_signal; } ;
struct ieee80211_tx_info {int flags; TYPE_9__ status; } ;
struct TYPE_16__ {int tx_lock; struct rt2x00_dev* rt2x00dev; } ;
struct TYPE_15__ {TYPE_5__* lib; int extra_tx_headroom; } ;
struct TYPE_14__ {int (* clear_entry ) (struct queue_entry*) ;} ;
struct TYPE_12__ {unsigned int idx; unsigned int flags; unsigned int count; } ;


 int CAPABILITY_HW_CRYPTO ;
 int DUMP_FRAME_TXDONE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (int *) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_NO_ACK ;
 unsigned int IEEE80211_TX_MAX_RATES ;
 unsigned int IEEE80211_TX_RC_USE_RTS_CTS ;
 int IEEE80211_TX_STAT_ACK ;
 int IEEE80211_TX_STAT_AMPDU ;
 int IEEE80211_TX_STAT_AMPDU_NO_BACK ;
 int Q_INDEX_DONE ;
 int REQUIRE_L2PAD ;
 int REQUIRE_TASKLET_CONTEXT ;
 unsigned int SKBDESC_DESC_IN_SKB ;
 unsigned int SKBDESC_NOT_MAC80211 ;
 int TXDONE_AMPDU ;
 int TXDONE_FALLBACK ;
 int TXDONE_SUCCESS ;
 int TXDONE_UNKNOWN ;
 int dev_kfree_skb_any (int *) ;
 struct skb_frame_desc* get_skb_frame_desc (int *) ;
 unsigned int ieee80211_get_hdrlen_from_skb (int *) ;
 int ieee80211_tx_status (int ,int *) ;
 int ieee80211_tx_status_ni (int ,int *) ;
 int memset (TYPE_9__*,int ,int) ;
 int rt2x00crypto_tx_insert_iv (int *,unsigned int) ;
 int rt2x00debug_dump_frame (struct rt2x00_dev*,int ,int *) ;
 scalar_t__ rt2x00lib_txdone_bar_status (struct queue_entry*) ;
 int rt2x00queue_index_inc (struct queue_entry*,int ) ;
 int rt2x00queue_remove_l2pad (int *,unsigned int) ;
 int rt2x00queue_threshold (TYPE_7__*) ;
 int rt2x00queue_unmap_skb (struct queue_entry*) ;
 int rt2x00queue_unpause_queue (TYPE_7__*) ;
 int skb_pull (int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct queue_entry*) ;
 scalar_t__ test_bit (int ,int *) ;

void rt2x00lib_txdone(struct queue_entry *entry,
        struct txdone_entry_desc *txdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(entry->skb);
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 unsigned int header_length, i;
 u8 rate_idx, rate_flags, retry_rates;
 u8 skbdesc_flags = skbdesc->flags;
 bool success;




 rt2x00queue_unmap_skb(entry);




 skb_pull(entry->skb, rt2x00dev->ops->extra_tx_headroom);




 skbdesc->flags &= ~SKBDESC_DESC_IN_SKB;




 header_length = ieee80211_get_hdrlen_from_skb(entry->skb);




 if (test_bit(REQUIRE_L2PAD, &rt2x00dev->cap_flags))
  rt2x00queue_remove_l2pad(entry->skb, header_length);







 if (test_bit(CAPABILITY_HW_CRYPTO, &rt2x00dev->cap_flags))
  rt2x00crypto_tx_insert_iv(entry->skb, header_length);





 rt2x00debug_dump_frame(rt2x00dev, DUMP_FRAME_TXDONE, entry->skb);






 success =
     rt2x00lib_txdone_bar_status(entry) ||
     test_bit(TXDONE_SUCCESS, &txdesc->flags) ||
     test_bit(TXDONE_UNKNOWN, &txdesc->flags);




 rt2x00dev->link.qual.tx_success += success;
 rt2x00dev->link.qual.tx_failed += !success;

 rate_idx = skbdesc->tx_rate_idx;
 rate_flags = skbdesc->tx_rate_flags;
 retry_rates = test_bit(TXDONE_FALLBACK, &txdesc->flags) ?
     (txdesc->retry + 1) : 1;




 memset(&tx_info->status, 0, sizeof(tx_info->status));
 tx_info->status.ack_signal = 0;







 for (i = 0; i < retry_rates && i < IEEE80211_TX_MAX_RATES; i++) {
  tx_info->status.rates[i].idx = rate_idx - i;
  tx_info->status.rates[i].flags = rate_flags;

  if (rate_idx - i == 0) {




   tx_info->status.rates[i].count = retry_rates - i;
   i++;
   break;
  }
  tx_info->status.rates[i].count = 1;
 }
 if (i < (IEEE80211_TX_MAX_RATES - 1))
  tx_info->status.rates[i].idx = -1;

 if (!(tx_info->flags & IEEE80211_TX_CTL_NO_ACK)) {
  if (success)
   tx_info->flags |= IEEE80211_TX_STAT_ACK;
  else
   rt2x00dev->low_level_stats.dot11ACKFailureCount++;
 }
 if (test_bit(TXDONE_AMPDU, &txdesc->flags) ||
     tx_info->flags & IEEE80211_TX_CTL_AMPDU) {
  tx_info->flags |= IEEE80211_TX_STAT_AMPDU;
  tx_info->status.ampdu_len = 1;
  tx_info->status.ampdu_ack_len = success ? 1 : 0;

  if (!success)
   tx_info->flags |= IEEE80211_TX_STAT_AMPDU_NO_BACK;
 }

 if (rate_flags & IEEE80211_TX_RC_USE_RTS_CTS) {
  if (success)
   rt2x00dev->low_level_stats.dot11RTSSuccessCount++;
  else
   rt2x00dev->low_level_stats.dot11RTSFailureCount++;
 }







 if (!(skbdesc_flags & SKBDESC_NOT_MAC80211)) {
  if (test_bit(REQUIRE_TASKLET_CONTEXT, &rt2x00dev->cap_flags))
   ieee80211_tx_status(rt2x00dev->hw, entry->skb);
  else
   ieee80211_tx_status_ni(rt2x00dev->hw, entry->skb);
 } else
  dev_kfree_skb_any(entry->skb);




 entry->skb = ((void*)0);
 entry->flags = 0;

 rt2x00dev->ops->lib->clear_entry(entry);

 rt2x00queue_index_inc(entry, Q_INDEX_DONE);
 spin_lock_bh(&entry->queue->tx_lock);
 if (!rt2x00queue_threshold(entry->queue))
  rt2x00queue_unpause_queue(entry->queue);
 spin_unlock_bh(&entry->queue->tx_lock);
}
