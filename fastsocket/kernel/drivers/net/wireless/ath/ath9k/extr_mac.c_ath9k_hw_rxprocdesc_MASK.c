#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct ath_rx_status {int rs_datalen; int rs_rate; int rs_more; int rs_isaggr; int rs_moreaggr; int /*<<< orphan*/  rs_status; void* rs_phyerr; int /*<<< orphan*/  rs_flags; void* rs_antenna; void* rs_keyix; void* rs_rssi_ext2; void* rs_rssi_ext1; void* rs_rssi_ext0; void* rs_rssi_ctl2; void* rs_rssi_ctl1; void* rs_rssi_ctl0; void* rs_rssi; int /*<<< orphan*/  rs_tstamp; } ;
struct ath_hw {int dummy; } ;
struct ath_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx; } ;
struct ar5416_desc {int ds_rxstatus8; int ds_rxstatus1; int ds_rxstatus4; int ds_rxstatus0; int ds_rxstatus3; int /*<<< orphan*/  AR_RcvTimestamp; TYPE_1__ u; } ;

/* Variables and functions */
 struct ar5416_desc* FUNC0 (struct ath_desc*) ; 
 int AR_2040 ; 
 int AR_CRCErr ; 
 int AR_DataLen ; 
 int AR_DecryptBusyErr ; 
 int AR_DecryptCRCErr ; 
 int AR_GI ; 
 int /*<<< orphan*/  AR_KeyIdx ; 
 int AR_KeyMiss ; 
 int AR_MichaelErr ; 
 int AR_PHYErr ; 
 int /*<<< orphan*/  AR_PHYErrCode ; 
 int AR_PostDelimCRCErr ; 
 int AR_PreDelimCRCErr ; 
 int AR_RxAggr ; 
 int /*<<< orphan*/  AR_RxAntenna ; 
 int AR_RxDone ; 
 int AR_RxFrameOK ; 
 int AR_RxKeyIdxValid ; 
 int AR_RxMore ; 
 int AR_RxMoreAggr ; 
 int /*<<< orphan*/  AR_RxRSSIAnt00 ; 
 int /*<<< orphan*/  AR_RxRSSIAnt01 ; 
 int /*<<< orphan*/  AR_RxRSSIAnt02 ; 
 int /*<<< orphan*/  AR_RxRSSIAnt10 ; 
 int /*<<< orphan*/  AR_RxRSSIAnt11 ; 
 int /*<<< orphan*/  AR_RxRSSIAnt12 ; 
 int /*<<< orphan*/  AR_RxRSSICombined ; 
 int /*<<< orphan*/  AR_RxRate ; 
 void* ATH9K_RSSI_BAD ; 
 int /*<<< orphan*/  ATH9K_RXERR_CORRUPT_DESC ; 
 int /*<<< orphan*/  ATH9K_RXERR_CRC ; 
 int /*<<< orphan*/  ATH9K_RXERR_DECRYPT ; 
 int /*<<< orphan*/  ATH9K_RXERR_KEYMISS ; 
 int /*<<< orphan*/  ATH9K_RXERR_MIC ; 
 int /*<<< orphan*/  ATH9K_RXERR_PHY ; 
 void* ATH9K_RXKEYIX_INVALID ; 
 int /*<<< orphan*/  ATH9K_RX_2040 ; 
 int /*<<< orphan*/  ATH9K_RX_DECRYPT_BUSY ; 
 int /*<<< orphan*/  ATH9K_RX_DELIM_CRC_POST ; 
 int /*<<< orphan*/  ATH9K_RX_DELIM_CRC_PRE ; 
 int /*<<< orphan*/  ATH9K_RX_GI ; 
 int EINPROGRESS ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 

int FUNC2(struct ath_hw *ah, struct ath_desc *ds,
			struct ath_rx_status *rs)
{
	struct ar5416_desc ads;
	struct ar5416_desc *adsp = FUNC0(ds);
	u32 phyerr;

	if ((adsp->ds_rxstatus8 & AR_RxDone) == 0)
		return -EINPROGRESS;

	ads.u.rx = adsp->u.rx;

	rs->rs_status = 0;
	rs->rs_flags = 0;

	rs->rs_datalen = ads.ds_rxstatus1 & AR_DataLen;
	rs->rs_tstamp = ads.AR_RcvTimestamp;

	if (ads.ds_rxstatus8 & AR_PostDelimCRCErr) {
		rs->rs_rssi = ATH9K_RSSI_BAD;
		rs->rs_rssi_ctl0 = ATH9K_RSSI_BAD;
		rs->rs_rssi_ctl1 = ATH9K_RSSI_BAD;
		rs->rs_rssi_ctl2 = ATH9K_RSSI_BAD;
		rs->rs_rssi_ext0 = ATH9K_RSSI_BAD;
		rs->rs_rssi_ext1 = ATH9K_RSSI_BAD;
		rs->rs_rssi_ext2 = ATH9K_RSSI_BAD;
	} else {
		rs->rs_rssi = FUNC1(ads.ds_rxstatus4, AR_RxRSSICombined);
		rs->rs_rssi_ctl0 = FUNC1(ads.ds_rxstatus0,
						AR_RxRSSIAnt00);
		rs->rs_rssi_ctl1 = FUNC1(ads.ds_rxstatus0,
						AR_RxRSSIAnt01);
		rs->rs_rssi_ctl2 = FUNC1(ads.ds_rxstatus0,
						AR_RxRSSIAnt02);
		rs->rs_rssi_ext0 = FUNC1(ads.ds_rxstatus4,
						AR_RxRSSIAnt10);
		rs->rs_rssi_ext1 = FUNC1(ads.ds_rxstatus4,
						AR_RxRSSIAnt11);
		rs->rs_rssi_ext2 = FUNC1(ads.ds_rxstatus4,
						AR_RxRSSIAnt12);
	}
	if (ads.ds_rxstatus8 & AR_RxKeyIdxValid)
		rs->rs_keyix = FUNC1(ads.ds_rxstatus8, AR_KeyIdx);
	else
		rs->rs_keyix = ATH9K_RXKEYIX_INVALID;

	rs->rs_rate = FUNC1(ads.ds_rxstatus0, AR_RxRate);
	rs->rs_more = (ads.ds_rxstatus1 & AR_RxMore) ? 1 : 0;

	rs->rs_isaggr = (ads.ds_rxstatus8 & AR_RxAggr) ? 1 : 0;
	rs->rs_moreaggr =
		(ads.ds_rxstatus8 & AR_RxMoreAggr) ? 1 : 0;
	rs->rs_antenna = FUNC1(ads.ds_rxstatus3, AR_RxAntenna);
	rs->rs_flags =
		(ads.ds_rxstatus3 & AR_GI) ? ATH9K_RX_GI : 0;
	rs->rs_flags |=
		(ads.ds_rxstatus3 & AR_2040) ? ATH9K_RX_2040 : 0;

	if (ads.ds_rxstatus8 & AR_PreDelimCRCErr)
		rs->rs_flags |= ATH9K_RX_DELIM_CRC_PRE;
	if (ads.ds_rxstatus8 & AR_PostDelimCRCErr)
		rs->rs_flags |= ATH9K_RX_DELIM_CRC_POST;
	if (ads.ds_rxstatus8 & AR_DecryptBusyErr)
		rs->rs_flags |= ATH9K_RX_DECRYPT_BUSY;

	if ((ads.ds_rxstatus8 & AR_RxFrameOK) == 0) {
		/*
		 * Treat these errors as mutually exclusive to avoid spurious
		 * extra error reports from the hardware. If a CRC error is
		 * reported, then decryption and MIC errors are irrelevant,
		 * the frame is going to be dropped either way
		 */
		if (ads.ds_rxstatus8 & AR_PHYErr) {
			rs->rs_status |= ATH9K_RXERR_PHY;
			phyerr = FUNC1(ads.ds_rxstatus8, AR_PHYErrCode);
			rs->rs_phyerr = phyerr;
		} else if (ads.ds_rxstatus8 & AR_CRCErr)
			rs->rs_status |= ATH9K_RXERR_CRC;
		else if (ads.ds_rxstatus8 & AR_DecryptCRCErr)
			rs->rs_status |= ATH9K_RXERR_DECRYPT;
		else if (ads.ds_rxstatus8 & AR_MichaelErr)
			rs->rs_status |= ATH9K_RXERR_MIC;
	} else {
		if (ads.ds_rxstatus8 &
		    (AR_CRCErr | AR_PHYErr | AR_DecryptCRCErr | AR_MichaelErr))
			rs->rs_status |= ATH9K_RXERR_CORRUPT_DESC;

		/* Only up to MCS16 supported, everything above is invalid */
		if (rs->rs_rate >= 0x90)
			rs->rs_status |= ATH9K_RXERR_CORRUPT_DESC;
	}

	if (ads.ds_rxstatus8 & AR_KeyMiss)
		rs->rs_status |= ATH9K_RXERR_KEYMISS;

	return 0;
}