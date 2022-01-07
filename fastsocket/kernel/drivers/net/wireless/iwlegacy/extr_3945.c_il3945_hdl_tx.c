
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
typedef int u16 ;
struct TYPE_10__ {int n_bd; size_t read_ptr; int write_ptr; } ;
struct il_tx_queue {TYPE_5__ q; int * skbs; int time_stamp; } ;
struct TYPE_7__ {int * raw; } ;
struct TYPE_6__ {int sequence; } ;
struct il_rx_pkt {TYPE_2__ u; TYPE_1__ hdr; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {struct il_tx_queue* txq; } ;
struct il3945_tx_resp {int failure_frame; int rate; int status; } ;
struct TYPE_9__ {TYPE_3__* rates; } ;
struct ieee80211_tx_info {scalar_t__ band; int flags; TYPE_4__ status; } ;
struct TYPE_8__ {int idx; int count; } ;


 int D_TX (char*,int,int ,int,int ,int) ;
 int D_TX_REPLY (char*,int) ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (int ) ;
 int IEEE80211_TX_STAT_ACK ;
 int IL_ERR (char*,...) ;
 scalar_t__ IL_FIRST_OFDM_RATE ;
 int SEQ_TO_IDX (int ) ;
 int SEQ_TO_QUEUE (int ) ;
 int TX_ABORT_REQUIRED_MSK ;
 int TX_STATUS_MSK ;
 int TX_STATUS_SUCCESS ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int il3945_get_tx_fail_reason (int) ;
 int il3945_hwrate_to_plcp_idx (int ) ;
 int il3945_tx_queue_reclaim (struct il_priv*,int,int) ;
 scalar_t__ il_queue_used (TYPE_5__*,int) ;
 int jiffies ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

__attribute__((used)) static void
il3945_hdl_tx(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 u16 sequence = le16_to_cpu(pkt->hdr.sequence);
 int txq_id = SEQ_TO_QUEUE(sequence);
 int idx = SEQ_TO_IDX(sequence);
 struct il_tx_queue *txq = &il->txq[txq_id];
 struct ieee80211_tx_info *info;
 struct il3945_tx_resp *tx_resp = (void *)&pkt->u.raw[0];
 u32 status = le32_to_cpu(tx_resp->status);
 int rate_idx;
 int fail;

 if (idx >= txq->q.n_bd || il_queue_used(&txq->q, idx) == 0) {
  IL_ERR("Read idx for DMA queue txq_id (%d) idx %d "
         "is out of range [0-%d] %d %d\n", txq_id, idx,
         txq->q.n_bd, txq->q.write_ptr, txq->q.read_ptr);
  return;
 }

 txq->time_stamp = jiffies;
 info = IEEE80211_SKB_CB(txq->skbs[txq->q.read_ptr]);
 ieee80211_tx_info_clear_status(info);


 rate_idx = il3945_hwrate_to_plcp_idx(tx_resp->rate);
 if (info->band == IEEE80211_BAND_5GHZ)
  rate_idx -= IL_FIRST_OFDM_RATE;

 fail = tx_resp->failure_frame;

 info->status.rates[0].idx = rate_idx;
 info->status.rates[0].count = fail + 1;


 info->flags |=
     ((status & TX_STATUS_MSK) ==
      TX_STATUS_SUCCESS) ? IEEE80211_TX_STAT_ACK : 0;

 D_TX("Tx queue %d Status %s (0x%08x) plcp rate %d retries %d\n", txq_id,
      il3945_get_tx_fail_reason(status), status, tx_resp->rate,
      tx_resp->failure_frame);

 D_TX_REPLY("Tx queue reclaim %d\n", idx);
 il3945_tx_queue_reclaim(il, txq_id, idx);

 if (status & TX_ABORT_REQUIRED_MSK)
  IL_ERR("TODO:  Implement Tx ABORT REQUIRED!!!\n");
}
