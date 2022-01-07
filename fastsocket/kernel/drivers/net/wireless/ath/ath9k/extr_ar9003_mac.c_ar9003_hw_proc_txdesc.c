
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_tx_status {int ts_rateindex; int ts_seqnum; int tid; int qid; int desc_id; int ts_rssi_ctl0; int ts_rssi_ctl1; int ts_rssi_ctl2; int ts_shortretry; int ts_longretry; int ts_virtcol; int ts_rssi; int ts_rssi_ext0; int ts_rssi_ext1; int ts_rssi_ext2; int ts_flags; int ts_status; int ba_high; int ba_low; int ts_tstamp; } ;
struct ath_hw {size_t ts_tail; int ts_size; struct ar9003_txs* ts_ring; } ;
struct ar9003_txs {int ds_info; int status1; int status7; int status3; int status6; int status5; int status2; int status4; int status8; } ;


 int ACCESS_ONCE (int ) ;
 int AR_DataFailCnt ;
 int AR_DescCfgErr ;
 int AR_DescId ;
 int AR_ExcessiveRetries ;
 int AR_FIFOUnderrun ;
 int AR_Filtered ;
 int AR_FinalTxIdx ;
 int AR_RTSFailCnt ;
 int AR_SeqNum ;
 int AR_TxBaStatus ;
 int AR_TxDataUnderrun ;
 int AR_TxDelimUnderrun ;
 int AR_TxDescId ;
 int AR_TxDone ;
 int AR_TxOpExceeded ;
 int AR_TxQcuNum ;
 int AR_TxRSSIAnt00 ;
 int AR_TxRSSIAnt01 ;
 int AR_TxRSSIAnt02 ;
 int AR_TxRSSIAnt10 ;
 int AR_TxRSSIAnt11 ;
 int AR_TxRSSIAnt12 ;
 int AR_TxRSSICombined ;
 int AR_TxRxDesc ;
 int AR_TxTid ;
 int AR_TxTimerExpired ;
 int AR_VirtRetryCnt ;
 int ATH9K_TXERR_FIFO ;
 int ATH9K_TXERR_FILT ;
 int ATH9K_TXERR_TIMER_EXPIRED ;
 int ATH9K_TXERR_XRETRY ;
 int ATH9K_TXERR_XTXOP ;
 int ATH9K_TX_BA ;
 int ATH9K_TX_DATA_UNDERRUN ;
 int ATH9K_TX_DELIM_UNDERRUN ;
 int ATH9K_TX_DESC_CFG_ERR ;
 int ATHEROS_VENDOR_ID ;
 int EINPROGRESS ;
 int EIO ;
 int MS (int,int ) ;
 int XMIT ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_updatetxtriglevel (struct ath_hw*,int) ;
 int ath_dbg (int ,int ,char*,int) ;
 int memset (struct ar9003_txs*,int ,int) ;

__attribute__((used)) static int ar9003_hw_proc_txdesc(struct ath_hw *ah, void *ds,
     struct ath_tx_status *ts)
{
 struct ar9003_txs *ads;
 u32 status;

 ads = &ah->ts_ring[ah->ts_tail];

 status = ACCESS_ONCE(ads->status8);
 if ((status & AR_TxDone) == 0)
  return -EINPROGRESS;

 ah->ts_tail = (ah->ts_tail + 1) % ah->ts_size;

 if ((MS(ads->ds_info, AR_DescId) != ATHEROS_VENDOR_ID) ||
     (MS(ads->ds_info, AR_TxRxDesc) != 1)) {
  ath_dbg(ath9k_hw_common(ah), XMIT,
   "Tx Descriptor error %x\n", ads->ds_info);
  memset(ads, 0, sizeof(*ads));
  return -EIO;
 }

 ts->ts_rateindex = MS(status, AR_FinalTxIdx);
 ts->ts_seqnum = MS(status, AR_SeqNum);
 ts->tid = MS(status, AR_TxTid);

 ts->qid = MS(ads->ds_info, AR_TxQcuNum);
 ts->desc_id = MS(ads->status1, AR_TxDescId);
 ts->ts_tstamp = ads->status4;
 ts->ts_status = 0;
 ts->ts_flags = 0;

 if (status & AR_TxOpExceeded)
  ts->ts_status |= ATH9K_TXERR_XTXOP;
 status = ACCESS_ONCE(ads->status2);
 ts->ts_rssi_ctl0 = MS(status, AR_TxRSSIAnt00);
 ts->ts_rssi_ctl1 = MS(status, AR_TxRSSIAnt01);
 ts->ts_rssi_ctl2 = MS(status, AR_TxRSSIAnt02);
 if (status & AR_TxBaStatus) {
  ts->ts_flags |= ATH9K_TX_BA;
  ts->ba_low = ads->status5;
  ts->ba_high = ads->status6;
 }

 status = ACCESS_ONCE(ads->status3);
 if (status & AR_ExcessiveRetries)
  ts->ts_status |= ATH9K_TXERR_XRETRY;
 if (status & AR_Filtered)
  ts->ts_status |= ATH9K_TXERR_FILT;
 if (status & AR_FIFOUnderrun) {
  ts->ts_status |= ATH9K_TXERR_FIFO;
  ath9k_hw_updatetxtriglevel(ah, 1);
 }
 if (status & AR_TxTimerExpired)
  ts->ts_status |= ATH9K_TXERR_TIMER_EXPIRED;
 if (status & AR_DescCfgErr)
  ts->ts_flags |= ATH9K_TX_DESC_CFG_ERR;
 if (status & AR_TxDataUnderrun) {
  ts->ts_flags |= ATH9K_TX_DATA_UNDERRUN;
  ath9k_hw_updatetxtriglevel(ah, 1);
 }
 if (status & AR_TxDelimUnderrun) {
  ts->ts_flags |= ATH9K_TX_DELIM_UNDERRUN;
  ath9k_hw_updatetxtriglevel(ah, 1);
 }
 ts->ts_shortretry = MS(status, AR_RTSFailCnt);
 ts->ts_longretry = MS(status, AR_DataFailCnt);
 ts->ts_virtcol = MS(status, AR_VirtRetryCnt);

 status = ACCESS_ONCE(ads->status7);
 ts->ts_rssi = MS(status, AR_TxRSSICombined);
 ts->ts_rssi_ext0 = MS(status, AR_TxRSSIAnt10);
 ts->ts_rssi_ext1 = MS(status, AR_TxRSSIAnt11);
 ts->ts_rssi_ext2 = MS(status, AR_TxRSSIAnt12);

 memset(ads, 0, sizeof(*ads));

 return 0;
}
