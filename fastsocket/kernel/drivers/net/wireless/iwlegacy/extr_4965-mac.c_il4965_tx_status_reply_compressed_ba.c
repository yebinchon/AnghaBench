
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct il_priv {TYPE_1__* txq; } ;
struct il_ht_agg {int start_idx; int frame_count; int bitmap; int rate_n_flags; scalar_t__ wait_for_ba; } ;
struct il_compressed_ba_resp {int bitmap; int seq_ctl; int scd_flow; } ;
struct TYPE_4__ {int ampdu_ack_len; int ampdu_len; } ;
struct ieee80211_tx_info {TYPE_2__ status; int flags; } ;
struct TYPE_3__ {int * skbs; } ;


 int D_TX_REPLY (char*,...) ;
 int EINVAL ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (int ) ;
 int IEEE80211_TX_STAT_ACK ;
 int IEEE80211_TX_STAT_AMPDU ;
 int IL_ERR (char*) ;
 int SEQ_TO_IDX (int) ;
 int il4965_hwrate_to_tx_control (struct il_priv*,int ,struct ieee80211_tx_info*) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
il4965_tx_status_reply_compressed_ba(struct il_priv *il, struct il_ht_agg *agg,
         struct il_compressed_ba_resp *ba_resp)
{
 int i, sh, ack;
 u16 seq_ctl = le16_to_cpu(ba_resp->seq_ctl);
 u16 scd_flow = le16_to_cpu(ba_resp->scd_flow);
 int successes = 0;
 struct ieee80211_tx_info *info;
 u64 bitmap, sent_bitmap;

 if (unlikely(!agg->wait_for_ba)) {
  if (unlikely(ba_resp->bitmap))
   IL_ERR("Received BA when not expected\n");
  return -EINVAL;
 }


 agg->wait_for_ba = 0;
 D_TX_REPLY("BA %d %d\n", agg->start_idx, ba_resp->seq_ctl);


 sh = agg->start_idx - SEQ_TO_IDX(seq_ctl >> 4);
 if (sh < 0)
  sh += 0x100;

 if (agg->frame_count > (64 - sh)) {
  D_TX_REPLY("more frames than bitmap size");
  return -1;
 }


 bitmap = le64_to_cpu(ba_resp->bitmap) >> sh;



 sent_bitmap = bitmap & agg->bitmap;



 i = 0;
 while (sent_bitmap) {
  ack = sent_bitmap & 1ULL;
  successes += ack;
  D_TX_REPLY("%s ON i=%d idx=%d raw=%d\n", ack ? "ACK" : "NACK",
      i, (agg->start_idx + i) & 0xff, agg->start_idx + i);
  sent_bitmap >>= 1;
  ++i;
 }

 D_TX_REPLY("Bitmap %llx\n", (unsigned long long)bitmap);

 info = IEEE80211_SKB_CB(il->txq[scd_flow].skbs[agg->start_idx]);
 memset(&info->status, 0, sizeof(info->status));
 info->flags |= IEEE80211_TX_STAT_ACK;
 info->flags |= IEEE80211_TX_STAT_AMPDU;
 info->status.ampdu_ack_len = successes;
 info->status.ampdu_len = agg->frame_count;
 il4965_hwrate_to_tx_control(il, agg->rate_n_flags, info);

 return 0;
}
