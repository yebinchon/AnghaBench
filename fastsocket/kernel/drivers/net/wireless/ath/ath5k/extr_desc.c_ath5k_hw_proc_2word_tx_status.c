
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath5k_tx_status {int ts_antenna; int ts_status; scalar_t__ ts_final_idx; void* ts_rssi; void* ts_seqnum; void* ts_final_retry; void* ts_shortretry; void* ts_tstamp; } ;
struct ath5k_hw_tx_status {int tx_status_1; int tx_status_0; } ;
struct ath5k_hw {int dummy; } ;
struct TYPE_3__ {struct ath5k_hw_tx_status tx_stat; } ;
struct TYPE_4__ {TYPE_1__ ds_tx5210; } ;
struct ath5k_desc {TYPE_2__ ud; } ;


 int AR5K_DESC_TX_STATUS0_EXCESSIVE_RETRIES ;
 int AR5K_DESC_TX_STATUS0_FIFO_UNDERRUN ;
 int AR5K_DESC_TX_STATUS0_FILTERED ;
 int AR5K_DESC_TX_STATUS0_FRAME_XMIT_OK ;
 int AR5K_DESC_TX_STATUS0_LONG_RETRY_COUNT ;
 int AR5K_DESC_TX_STATUS0_SEND_TIMESTAMP ;
 int AR5K_DESC_TX_STATUS0_SHORT_RETRY_COUNT ;
 int AR5K_DESC_TX_STATUS1_ACK_SIG_STRENGTH ;
 int AR5K_DESC_TX_STATUS1_DONE ;
 int AR5K_DESC_TX_STATUS1_SEQ_NUM ;
 void* AR5K_REG_MS (int,int ) ;
 int AR5K_TXERR_FIFO ;
 int AR5K_TXERR_FILT ;
 int AR5K_TXERR_XRETRY ;
 int EINPROGRESS ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ath5k_hw_proc_2word_tx_status(struct ath5k_hw *ah,
    struct ath5k_desc *desc,
    struct ath5k_tx_status *ts)
{
 struct ath5k_hw_tx_status *tx_status;

 tx_status = &desc->ud.ds_tx5210.tx_stat;


 if (unlikely((tx_status->tx_status_1 & AR5K_DESC_TX_STATUS1_DONE) == 0))
  return -EINPROGRESS;




 ts->ts_tstamp = AR5K_REG_MS(tx_status->tx_status_0,
  AR5K_DESC_TX_STATUS0_SEND_TIMESTAMP);
 ts->ts_shortretry = AR5K_REG_MS(tx_status->tx_status_0,
  AR5K_DESC_TX_STATUS0_SHORT_RETRY_COUNT);
 ts->ts_final_retry = AR5K_REG_MS(tx_status->tx_status_0,
  AR5K_DESC_TX_STATUS0_LONG_RETRY_COUNT);

 ts->ts_seqnum = AR5K_REG_MS(tx_status->tx_status_1,
  AR5K_DESC_TX_STATUS1_SEQ_NUM);
 ts->ts_rssi = AR5K_REG_MS(tx_status->tx_status_1,
  AR5K_DESC_TX_STATUS1_ACK_SIG_STRENGTH);
 ts->ts_antenna = 1;
 ts->ts_status = 0;
 ts->ts_final_idx = 0;

 if (!(tx_status->tx_status_0 & AR5K_DESC_TX_STATUS0_FRAME_XMIT_OK)) {
  if (tx_status->tx_status_0 &
    AR5K_DESC_TX_STATUS0_EXCESSIVE_RETRIES)
   ts->ts_status |= AR5K_TXERR_XRETRY;

  if (tx_status->tx_status_0 & AR5K_DESC_TX_STATUS0_FIFO_UNDERRUN)
   ts->ts_status |= AR5K_TXERR_FIFO;

  if (tx_status->tx_status_0 & AR5K_DESC_TX_STATUS0_FILTERED)
   ts->ts_status |= AR5K_TXERR_FILT;
 }

 return 0;
}
