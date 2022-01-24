#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct ath_tx_status {int /*<<< orphan*/  evm2; int /*<<< orphan*/  evm1; int /*<<< orphan*/  evm0; void* ts_rssi_ext2; void* ts_rssi_ext1; void* ts_rssi_ext0; void* ts_rssi; void* ts_virtcol; void* ts_longretry; void* ts_shortretry; int /*<<< orphan*/  ts_flags; int /*<<< orphan*/  ts_status; int /*<<< orphan*/  ba_high; int /*<<< orphan*/  ba_low; void* ts_rssi_ctl2; void* ts_rssi_ctl1; void* ts_rssi_ctl0; void* ts_seqnum; void* ts_rateindex; void* tid; int /*<<< orphan*/  ts_tstamp; } ;
struct ath_hw {int dummy; } ;
struct ar5416_desc {int /*<<< orphan*/  AR_TxEVM2; int /*<<< orphan*/  AR_TxEVM1; int /*<<< orphan*/  AR_TxEVM0; int /*<<< orphan*/  ds_txstatus5; int /*<<< orphan*/  ds_txstatus1; int /*<<< orphan*/  AR_BaBitmapHigh; int /*<<< orphan*/  AR_BaBitmapLow; int /*<<< orphan*/  ds_txstatus0; int /*<<< orphan*/  AR_SendTimestamp; int /*<<< orphan*/  ds_txstatus9; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ar5416_desc* FUNC1 (void*) ; 
 int /*<<< orphan*/  AR_DataFailCnt ; 
 int AR_DescCfgErr ; 
 int AR_ExcessiveRetries ; 
 int AR_FIFOUnderrun ; 
 int AR_Filtered ; 
 int /*<<< orphan*/  AR_FinalTxIdx ; 
 int AR_FrmXmitOK ; 
 int /*<<< orphan*/  AR_RTSFailCnt ; 
 int /*<<< orphan*/  AR_SeqNum ; 
 int AR_TxBaStatus ; 
 int AR_TxDataUnderrun ; 
 int AR_TxDelimUnderrun ; 
 int AR_TxDone ; 
 int AR_TxOpExceeded ; 
 int /*<<< orphan*/  AR_TxRSSIAnt00 ; 
 int /*<<< orphan*/  AR_TxRSSIAnt01 ; 
 int /*<<< orphan*/  AR_TxRSSIAnt02 ; 
 int /*<<< orphan*/  AR_TxRSSIAnt10 ; 
 int /*<<< orphan*/  AR_TxRSSIAnt11 ; 
 int /*<<< orphan*/  AR_TxRSSIAnt12 ; 
 int /*<<< orphan*/  AR_TxRSSICombined ; 
 int /*<<< orphan*/  AR_TxTid ; 
 int AR_TxTimerExpired ; 
 int /*<<< orphan*/  AR_VirtRetryCnt ; 
 int /*<<< orphan*/  ATH9K_TXERR_FIFO ; 
 int /*<<< orphan*/  ATH9K_TXERR_FILT ; 
 int /*<<< orphan*/  ATH9K_TXERR_TIMER_EXPIRED ; 
 int /*<<< orphan*/  ATH9K_TXERR_XRETRY ; 
 int /*<<< orphan*/  ATH9K_TXERR_XTXOP ; 
 int /*<<< orphan*/  ATH9K_TX_ACKED ; 
 int /*<<< orphan*/  ATH9K_TX_BA ; 
 int /*<<< orphan*/  ATH9K_TX_DATA_UNDERRUN ; 
 int /*<<< orphan*/  ATH9K_TX_DELIM_UNDERRUN ; 
 int /*<<< orphan*/  ATH9K_TX_DESC_CFG_ERR ; 
 int EINPROGRESS ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 

__attribute__((used)) static int FUNC4(struct ath_hw *ah, void *ds,
				 struct ath_tx_status *ts)
{
	struct ar5416_desc *ads = FUNC1(ds);
	u32 status;

	status = FUNC0(ads->ds_txstatus9);
	if ((status & AR_TxDone) == 0)
		return -EINPROGRESS;

	ts->ts_tstamp = ads->AR_SendTimestamp;
	ts->ts_status = 0;
	ts->ts_flags = 0;

	if (status & AR_TxOpExceeded)
		ts->ts_status |= ATH9K_TXERR_XTXOP;
	ts->tid = FUNC2(status, AR_TxTid);
	ts->ts_rateindex = FUNC2(status, AR_FinalTxIdx);
	ts->ts_seqnum = FUNC2(status, AR_SeqNum);

	status = FUNC0(ads->ds_txstatus0);
	ts->ts_rssi_ctl0 = FUNC2(status, AR_TxRSSIAnt00);
	ts->ts_rssi_ctl1 = FUNC2(status, AR_TxRSSIAnt01);
	ts->ts_rssi_ctl2 = FUNC2(status, AR_TxRSSIAnt02);
	if (status & AR_TxBaStatus) {
		ts->ts_flags |= ATH9K_TX_BA;
		ts->ba_low = ads->AR_BaBitmapLow;
		ts->ba_high = ads->AR_BaBitmapHigh;
	}

	status = FUNC0(ads->ds_txstatus1);
	if (status & AR_FrmXmitOK)
		ts->ts_status |= ATH9K_TX_ACKED;
	else {
		if (status & AR_ExcessiveRetries)
			ts->ts_status |= ATH9K_TXERR_XRETRY;
		if (status & AR_Filtered)
			ts->ts_status |= ATH9K_TXERR_FILT;
		if (status & AR_FIFOUnderrun) {
			ts->ts_status |= ATH9K_TXERR_FIFO;
			FUNC3(ah, true);
		}
	}
	if (status & AR_TxTimerExpired)
		ts->ts_status |= ATH9K_TXERR_TIMER_EXPIRED;
	if (status & AR_DescCfgErr)
		ts->ts_flags |= ATH9K_TX_DESC_CFG_ERR;
	if (status & AR_TxDataUnderrun) {
		ts->ts_flags |= ATH9K_TX_DATA_UNDERRUN;
		FUNC3(ah, true);
	}
	if (status & AR_TxDelimUnderrun) {
		ts->ts_flags |= ATH9K_TX_DELIM_UNDERRUN;
		FUNC3(ah, true);
	}
	ts->ts_shortretry = FUNC2(status, AR_RTSFailCnt);
	ts->ts_longretry = FUNC2(status, AR_DataFailCnt);
	ts->ts_virtcol = FUNC2(status, AR_VirtRetryCnt);

	status = FUNC0(ads->ds_txstatus5);
	ts->ts_rssi = FUNC2(status, AR_TxRSSICombined);
	ts->ts_rssi_ext0 = FUNC2(status, AR_TxRSSIAnt10);
	ts->ts_rssi_ext1 = FUNC2(status, AR_TxRSSIAnt11);
	ts->ts_rssi_ext2 = FUNC2(status, AR_TxRSSIAnt12);

	ts->evm0 = ads->AR_TxEVM0;
	ts->evm1 = ads->AR_TxEVM1;
	ts->evm2 = ads->AR_TxEVM2;

	return 0;
}