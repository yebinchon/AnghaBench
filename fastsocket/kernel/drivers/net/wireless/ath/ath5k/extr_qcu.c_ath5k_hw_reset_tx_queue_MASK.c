#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ath5k_txq_info {int tqi_type; int tqi_cw_min; int tqi_cw_max; int tqi_aifs; int tqi_cbr_period; int tqi_cbr_overflow_limit; int tqi_ready_time; int tqi_burst_time; int tqi_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  q_tx_num; } ;
struct TYPE_4__ {TYPE_1__ cap_queues; } ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_mac_version; int ah_txq_imr_txok; int ah_txq_imr_txerr; int ah_txq_imr_txurn; int ah_txq_imr_txdesc; int ah_txq_imr_txeol; int ah_txq_imr_cbrorn; int ah_txq_imr_cbrurn; int ah_txq_imr_qtrig; int ah_txq_imr_nofrm; int ah_txq_status; struct ath5k_txq_info* ah_txq; TYPE_2__ ah_capabilities; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR5K_DCU_CHAN_TIME_DUR ; 
 int AR5K_DCU_CHAN_TIME_ENABLE ; 
 int /*<<< orphan*/  AR5K_DCU_LCL_IFS_AIFS ; 
 int /*<<< orphan*/  AR5K_DCU_LCL_IFS_CW_MAX ; 
 int /*<<< orphan*/  AR5K_DCU_LCL_IFS_CW_MIN ; 
 int AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL ; 
 int AR5K_DCU_MISC_ARBLOCK_CTL_S ; 
 int AR5K_DCU_MISC_ARBLOCK_IGNORE ; 
 int AR5K_DCU_MISC_BACKOFF_FRAG ; 
 int AR5K_DCU_MISC_BCN_ENABLE ; 
 int AR5K_DCU_MISC_FRAG_WAIT ; 
 int AR5K_DCU_MISC_POST_FR_BKOFF_DIS ; 
 int AR5K_DCU_MISC_SEQNUM_CTL ; 
 int /*<<< orphan*/  AR5K_QCU_CBRCFG_INTVAL ; 
 int /*<<< orphan*/  AR5K_QCU_CBRCFG_ORN_THRES ; 
 int AR5K_QCU_MISC_BCN_ENABLE ; 
 int AR5K_QCU_MISC_CBREXP_BCN_DIS ; 
 int AR5K_QCU_MISC_CBREXP_DIS ; 
 int AR5K_QCU_MISC_CBR_THRES_ENABLE ; 
 int AR5K_QCU_MISC_FRSHED_CBR ; 
 int AR5K_QCU_MISC_FRSHED_DBA_GT ; 
 int AR5K_QCU_MISC_RDY_VEOL_POLICY ; 
 int AR5K_QCU_RDYTIMECFG_ENABLE ; 
 int /*<<< orphan*/  AR5K_QCU_RDYTIMECFG_INTVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath5k_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ath5k_hw*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  AR5K_SIMR0 ; 
 int /*<<< orphan*/  AR5K_SIMR0_QCU_TXDESC ; 
 int /*<<< orphan*/  AR5K_SIMR0_QCU_TXOK ; 
 int /*<<< orphan*/  AR5K_SIMR1 ; 
 int /*<<< orphan*/  AR5K_SIMR1_QCU_TXEOL ; 
 int /*<<< orphan*/  AR5K_SIMR1_QCU_TXERR ; 
 int /*<<< orphan*/  AR5K_SIMR2 ; 
 int /*<<< orphan*/  AR5K_SIMR2_QCU_TXURN ; 
 int /*<<< orphan*/  AR5K_SIMR3 ; 
 int /*<<< orphan*/  AR5K_SIMR3_QCBRORN ; 
 int /*<<< orphan*/  AR5K_SIMR3_QCBRURN ; 
 int /*<<< orphan*/  AR5K_SIMR4 ; 
 int /*<<< orphan*/  AR5K_SIMR4_QTRIG ; 
 scalar_t__ AR5K_SREV_AR5211 ; 
 int AR5K_TUNE_ADDITIONAL_SWBA_BACKOFF ; 
 int AR5K_TUNE_DMA_BEACON_RESP ; 
 int AR5K_TUNE_SW_BEACON_RESP ; 
 int /*<<< orphan*/  AR5K_TXNOFRM ; 
 int /*<<< orphan*/  AR5K_TXNOFRM_QCU ; 
 int AR5K_TXQ_FLAG_BACKOFF_DISABLE ; 
 int AR5K_TXQ_FLAG_CBRORNINT_ENABLE ; 
 int AR5K_TXQ_FLAG_CBRURNINT_ENABLE ; 
 int AR5K_TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE ; 
 int AR5K_TXQ_FLAG_QTRIGINT_ENABLE ; 
 int AR5K_TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE ; 
 int AR5K_TXQ_FLAG_TXDESCINT_ENABLE ; 
 int AR5K_TXQ_FLAG_TXEOLINT_ENABLE ; 
 int AR5K_TXQ_FLAG_TXERRINT_ENABLE ; 
 int AR5K_TXQ_FLAG_TXNOFRMINT_ENABLE ; 
 int AR5K_TXQ_FLAG_TXOKINT_ENABLE ; 
 int AR5K_TXQ_FLAG_TXURNINT_ENABLE ; 
#define  AR5K_TX_QUEUE_BEACON 131 
#define  AR5K_TX_QUEUE_CAB 130 
#define  AR5K_TX_QUEUE_DATA 129 
 int AR5K_TX_QUEUE_INACTIVE ; 
#define  AR5K_TX_QUEUE_UAPSD 128 
 int /*<<< orphan*/  FUNC13 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ath5k_hw*,unsigned int) ; 

int
FUNC15(struct ath5k_hw *ah, unsigned int queue)
{
	struct ath5k_txq_info *tq = &ah->ah_txq[queue];

	FUNC0(queue, ah->ah_capabilities.cap_queues.q_tx_num);

	tq = &ah->ah_txq[queue];

	/* Skip if queue inactive or if we are on AR5210
	 * that doesn't have QCU/DCU */
	if ((ah->ah_version == AR5K_AR5210) ||
	(tq->tqi_type == AR5K_TX_QUEUE_INACTIVE))
		return 0;

	/*
	 * Set contention window (cw_min/cw_max)
	 * and arbitrated interframe space (aifs)...
	 */
	FUNC13(ah,
		FUNC11(tq->tqi_cw_min, AR5K_DCU_LCL_IFS_CW_MIN) |
		FUNC11(tq->tqi_cw_max, AR5K_DCU_LCL_IFS_CW_MAX) |
		FUNC11(tq->tqi_aifs, AR5K_DCU_LCL_IFS_AIFS),
		FUNC3(queue));

	/*
	 * Set tx retry limits for this queue
	 */
	FUNC14(ah, queue);


	/*
	 * Set misc registers
	 */

	/* Enable DCU to wait for next fragment from QCU */
	FUNC10(ah, FUNC4(queue),
				AR5K_DCU_MISC_FRAG_WAIT);

	/* On Maui and Spirit use the global seqnum on DCU */
	if (ah->ah_mac_version < AR5K_SREV_AR5211)
		FUNC10(ah, FUNC4(queue),
					AR5K_DCU_MISC_SEQNUM_CTL);

	/* Constant bit rate period */
	if (tq->tqi_cbr_period) {
		FUNC13(ah, FUNC11(tq->tqi_cbr_period,
					AR5K_QCU_CBRCFG_INTVAL) |
					FUNC11(tq->tqi_cbr_overflow_limit,
					AR5K_QCU_CBRCFG_ORN_THRES),
					FUNC1(queue));

		FUNC10(ah, FUNC5(queue),
					AR5K_QCU_MISC_FRSHED_CBR);

		if (tq->tqi_cbr_overflow_limit)
			FUNC10(ah, FUNC5(queue),
					AR5K_QCU_MISC_CBR_THRES_ENABLE);
	}

	/* Ready time interval */
	if (tq->tqi_ready_time && (tq->tqi_type != AR5K_TX_QUEUE_CAB))
		FUNC13(ah, FUNC11(tq->tqi_ready_time,
					AR5K_QCU_RDYTIMECFG_INTVAL) |
					AR5K_QCU_RDYTIMECFG_ENABLE,
					FUNC7(queue));

	if (tq->tqi_burst_time) {
		FUNC13(ah, FUNC11(tq->tqi_burst_time,
					AR5K_DCU_CHAN_TIME_DUR) |
					AR5K_DCU_CHAN_TIME_ENABLE,
					FUNC2(queue));

		if (tq->tqi_flags & AR5K_TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE)
			FUNC10(ah, FUNC5(queue),
					AR5K_QCU_MISC_RDY_VEOL_POLICY);
	}

	/* Enable/disable Post frame backoff */
	if (tq->tqi_flags & AR5K_TXQ_FLAG_BACKOFF_DISABLE)
		FUNC13(ah, AR5K_DCU_MISC_POST_FR_BKOFF_DIS,
					FUNC4(queue));

	/* Enable/disable fragmentation burst backoff */
	if (tq->tqi_flags & AR5K_TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE)
		FUNC13(ah, AR5K_DCU_MISC_BACKOFF_FRAG,
					FUNC4(queue));

	/*
	 * Set registers by queue type
	 */
	switch (tq->tqi_type) {
	case AR5K_TX_QUEUE_BEACON:
		FUNC10(ah, FUNC5(queue),
				AR5K_QCU_MISC_FRSHED_DBA_GT |
				AR5K_QCU_MISC_CBREXP_BCN_DIS |
				AR5K_QCU_MISC_BCN_ENABLE);

		FUNC10(ah, FUNC4(queue),
				(AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL <<
				AR5K_DCU_MISC_ARBLOCK_CTL_S) |
				AR5K_DCU_MISC_ARBLOCK_IGNORE |
				AR5K_DCU_MISC_POST_FR_BKOFF_DIS |
				AR5K_DCU_MISC_BCN_ENABLE);
		break;

	case AR5K_TX_QUEUE_CAB:
		/* XXX: use BCN_SENT_GT, if we can figure out how */
		FUNC10(ah, FUNC5(queue),
					AR5K_QCU_MISC_FRSHED_DBA_GT |
					AR5K_QCU_MISC_CBREXP_DIS |
					AR5K_QCU_MISC_CBREXP_BCN_DIS);

		FUNC13(ah, ((tq->tqi_ready_time -
					(AR5K_TUNE_SW_BEACON_RESP -
					AR5K_TUNE_DMA_BEACON_RESP) -
				AR5K_TUNE_ADDITIONAL_SWBA_BACKOFF) * 1024) |
					AR5K_QCU_RDYTIMECFG_ENABLE,
					FUNC7(queue));

		FUNC10(ah, FUNC4(queue),
					(AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL <<
					AR5K_DCU_MISC_ARBLOCK_CTL_S));
		break;

	case AR5K_TX_QUEUE_UAPSD:
		FUNC10(ah, FUNC5(queue),
					AR5K_QCU_MISC_CBREXP_DIS);
		break;

	case AR5K_TX_QUEUE_DATA:
	default:
			break;
	}

	/* TODO: Handle frame compression */

	/*
	 * Enable interrupts for this tx queue
	 * in the secondary interrupt mask registers
	 */
	if (tq->tqi_flags & AR5K_TXQ_FLAG_TXOKINT_ENABLE)
		FUNC8(ah->ah_txq_imr_txok, queue);

	if (tq->tqi_flags & AR5K_TXQ_FLAG_TXERRINT_ENABLE)
		FUNC8(ah->ah_txq_imr_txerr, queue);

	if (tq->tqi_flags & AR5K_TXQ_FLAG_TXURNINT_ENABLE)
		FUNC8(ah->ah_txq_imr_txurn, queue);

	if (tq->tqi_flags & AR5K_TXQ_FLAG_TXDESCINT_ENABLE)
		FUNC8(ah->ah_txq_imr_txdesc, queue);

	if (tq->tqi_flags & AR5K_TXQ_FLAG_TXEOLINT_ENABLE)
		FUNC8(ah->ah_txq_imr_txeol, queue);

	if (tq->tqi_flags & AR5K_TXQ_FLAG_CBRORNINT_ENABLE)
		FUNC8(ah->ah_txq_imr_cbrorn, queue);

	if (tq->tqi_flags & AR5K_TXQ_FLAG_CBRURNINT_ENABLE)
		FUNC8(ah->ah_txq_imr_cbrurn, queue);

	if (tq->tqi_flags & AR5K_TXQ_FLAG_QTRIGINT_ENABLE)
		FUNC8(ah->ah_txq_imr_qtrig, queue);

	if (tq->tqi_flags & AR5K_TXQ_FLAG_TXNOFRMINT_ENABLE)
		FUNC8(ah->ah_txq_imr_nofrm, queue);

	/* Update secondary interrupt mask registers */

	/* Filter out inactive queues */
	ah->ah_txq_imr_txok &= ah->ah_txq_status;
	ah->ah_txq_imr_txerr &= ah->ah_txq_status;
	ah->ah_txq_imr_txurn &= ah->ah_txq_status;
	ah->ah_txq_imr_txdesc &= ah->ah_txq_status;
	ah->ah_txq_imr_txeol &= ah->ah_txq_status;
	ah->ah_txq_imr_cbrorn &= ah->ah_txq_status;
	ah->ah_txq_imr_cbrurn &= ah->ah_txq_status;
	ah->ah_txq_imr_qtrig &= ah->ah_txq_status;
	ah->ah_txq_imr_nofrm &= ah->ah_txq_status;

	FUNC13(ah, FUNC11(ah->ah_txq_imr_txok,
					AR5K_SIMR0_QCU_TXOK) |
					FUNC11(ah->ah_txq_imr_txdesc,
					AR5K_SIMR0_QCU_TXDESC),
					AR5K_SIMR0);

	FUNC13(ah, FUNC11(ah->ah_txq_imr_txerr,
					AR5K_SIMR1_QCU_TXERR) |
					FUNC11(ah->ah_txq_imr_txeol,
					AR5K_SIMR1_QCU_TXEOL),
					AR5K_SIMR1);

	/* Update SIMR2 but don't overwrite rest simr2 settings */
	FUNC9(ah, AR5K_SIMR2, AR5K_SIMR2_QCU_TXURN);
	FUNC10(ah, AR5K_SIMR2,
				FUNC11(ah->ah_txq_imr_txurn,
				AR5K_SIMR2_QCU_TXURN));

	FUNC13(ah, FUNC11(ah->ah_txq_imr_cbrorn,
				AR5K_SIMR3_QCBRORN) |
				FUNC11(ah->ah_txq_imr_cbrurn,
				AR5K_SIMR3_QCBRURN),
				AR5K_SIMR3);

	FUNC13(ah, FUNC11(ah->ah_txq_imr_qtrig,
				AR5K_SIMR4_QTRIG), AR5K_SIMR4);

	/* Set TXNOFRM_QCU for the queues with TXNOFRM enabled */
	FUNC13(ah, FUNC11(ah->ah_txq_imr_nofrm,
				AR5K_TXNOFRM_QCU), AR5K_TXNOFRM);

	/* No queue has TXNOFRM enabled, disable the interrupt
	 * by setting AR5K_TXNOFRM to zero */
	if (ah->ah_txq_imr_nofrm == 0)
		FUNC13(ah, 0, AR5K_TXNOFRM);

	/* Set QCU mask for this DCU to save power */
	FUNC12(ah, FUNC6(queue), queue);

	return 0;
}