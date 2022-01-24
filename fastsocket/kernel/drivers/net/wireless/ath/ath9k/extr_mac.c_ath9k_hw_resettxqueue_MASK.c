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
typedef  size_t u32 ;
struct TYPE_2__ {int additional_swba_backoff; scalar_t__ dma_beacon_response_time; scalar_t__ sw_beacon_response_time; } ;
struct ath_hw {int txok_interrupt_mask; int txerr_interrupt_mask; int txdesc_interrupt_mask; int txeol_interrupt_mask; int txurn_interrupt_mask; TYPE_1__ config; int /*<<< orphan*/  opmode; struct ath9k_tx_queue_info* txq; struct ath9k_channel* curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {int tqi_type; size_t tqi_cwmin; size_t tqi_cwmax; size_t tqi_aifs; size_t tqi_shretry; int tqi_cbrPeriod; size_t tqi_cbrOverflowLimit; size_t tqi_readyTime; size_t tqi_burstTime; int tqi_qflags; int tqi_intFlags; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  AR_D_CHNTIME_DUR ; 
 size_t AR_D_CHNTIME_EN ; 
 int /*<<< orphan*/  AR_D_LCL_IFS_AIFS ; 
 int /*<<< orphan*/  AR_D_LCL_IFS_CWMAX ; 
 int /*<<< orphan*/  AR_D_LCL_IFS_CWMIN ; 
 int /*<<< orphan*/  AR_D_MISC_ARB_LOCKOUT_CNTRL ; 
 size_t AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL ; 
 size_t AR_D_MISC_ARB_LOCKOUT_CNTRL_S ; 
 size_t AR_D_MISC_BEACON_USE ; 
 int AR_D_MISC_CW_BKOFF_EN ; 
 size_t AR_D_MISC_FRAG_BKOFF_EN ; 
 int AR_D_MISC_FRAG_WAIT_EN ; 
 size_t AR_D_MISC_POST_FR_BKOFF_DIS ; 
 int /*<<< orphan*/  AR_D_RETRY_LIMIT_FR_SH ; 
 int /*<<< orphan*/  AR_D_RETRY_LIMIT_STA_LG ; 
 int /*<<< orphan*/  AR_D_RETRY_LIMIT_STA_SH ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  AR_Q_CBRCFG_INTERVAL ; 
 int /*<<< orphan*/  AR_Q_CBRCFG_OVF_THRESH ; 
 int /*<<< orphan*/  AR_Q_DESC_CRCCHK ; 
 size_t AR_Q_DESC_CRCCHK_EN ; 
 size_t AR_Q_MISC_BEACON_USE ; 
 size_t AR_Q_MISC_CBR_EXP_CNTR_LIMIT_EN ; 
 size_t AR_Q_MISC_CBR_INCR_DIS0 ; 
 size_t AR_Q_MISC_CBR_INCR_DIS1 ; 
 size_t AR_Q_MISC_DCU_EARLY_TERM_REQ ; 
 size_t AR_Q_MISC_FSP_CBR ; 
 size_t AR_Q_MISC_FSP_DBA_GATED ; 
 size_t AR_Q_MISC_RDYTIME_EXP_POLICY ; 
 int /*<<< orphan*/  AR_Q_RDYTIMECFG_DURATION ; 
 size_t AR_Q_RDYTIMECFG_EN ; 
 scalar_t__ FUNC7 (struct ath_hw*) ; 
 scalar_t__ FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*) ; 
 size_t ATH9K_TXQ_USEDEFAULT ; 
 int ATH9K_TXQ_USE_LOCKOUT_BKOFF_DIS ; 
#define  ATH9K_TX_QUEUE_BEACON 131 
#define  ATH9K_TX_QUEUE_CAB 130 
 int ATH9K_TX_QUEUE_INACTIVE ; 
#define  ATH9K_TX_QUEUE_PSPOLL 129 
#define  ATH9K_TX_QUEUE_UAPSD 128 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*) ; 
 size_t INIT_CWMIN ; 
 size_t INIT_CWMIN_11B ; 
 size_t INIT_SLG_RETRY ; 
 size_t INIT_SSH_RETRY ; 
 scalar_t__ FUNC11 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  QUEUE ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC15 (size_t,int /*<<< orphan*/ ) ; 
 int TXQ_FLAG_BACKOFF_DISABLE ; 
 int TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE ; 
 int TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE ; 
 int TXQ_FLAG_TXDESCINT_ENABLE ; 
 int TXQ_FLAG_TXEOLINT_ENABLE ; 
 int TXQ_FLAG_TXINT_ENABLE ; 
 int TXQ_FLAG_TXURNINT_ENABLE ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hw*,size_t) ; 
 struct ath_common* FUNC17 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_hw*,struct ath9k_tx_queue_info*) ; 
 int /*<<< orphan*/  FUNC19 (struct ath_common*,int /*<<< orphan*/ ,char*,size_t) ; 

bool FUNC20(struct ath_hw *ah, u32 q)
{
	struct ath_common *common = FUNC17(ah);
	struct ath9k_channel *chan = ah->curchan;
	struct ath9k_tx_queue_info *qi;
	u32 cwMin, chanCwMin, value;

	qi = &ah->txq[q];
	if (qi->tqi_type == ATH9K_TX_QUEUE_INACTIVE) {
		FUNC19(common, QUEUE, "Reset TXQ, inactive queue: %u\n", q);
		return true;
	}

	FUNC19(common, QUEUE, "Reset TX queue: %u\n", q);

	if (qi->tqi_cwmin == ATH9K_TXQ_USEDEFAULT) {
		if (chan && FUNC11(chan))
			chanCwMin = INIT_CWMIN_11B;
		else
			chanCwMin = INIT_CWMIN;

		for (cwMin = 1; cwMin < chanCwMin; cwMin = (cwMin << 1) | 1);
	} else
		cwMin = qi->tqi_cwmin;

	FUNC10(ah);

	FUNC14(ah, FUNC1(q),
		  FUNC15(cwMin, AR_D_LCL_IFS_CWMIN) |
		  FUNC15(qi->tqi_cwmax, AR_D_LCL_IFS_CWMAX) |
		  FUNC15(qi->tqi_aifs, AR_D_LCL_IFS_AIFS));

	FUNC14(ah, FUNC3(q),
		  FUNC15(INIT_SSH_RETRY, AR_D_RETRY_LIMIT_STA_SH) |
		  FUNC15(INIT_SLG_RETRY, AR_D_RETRY_LIMIT_STA_LG) |
		  FUNC15(qi->tqi_shretry, AR_D_RETRY_LIMIT_FR_SH));

	FUNC14(ah, FUNC5(q), AR_Q_MISC_DCU_EARLY_TERM_REQ);

	if (FUNC8(ah) && !FUNC9(ah))
		FUNC14(ah, FUNC2(q),
			  AR_D_MISC_CW_BKOFF_EN | AR_D_MISC_FRAG_WAIT_EN | 0x1);
	else
		FUNC14(ah, FUNC2(q),
			  AR_D_MISC_CW_BKOFF_EN | AR_D_MISC_FRAG_WAIT_EN | 0x2);

	if (qi->tqi_cbrPeriod) {
		FUNC14(ah, FUNC4(q),
			  FUNC15(qi->tqi_cbrPeriod, AR_Q_CBRCFG_INTERVAL) |
			  FUNC15(qi->tqi_cbrOverflowLimit, AR_Q_CBRCFG_OVF_THRESH));
		FUNC13(ah, FUNC5(q), AR_Q_MISC_FSP_CBR |
			    (qi->tqi_cbrOverflowLimit ?
			     AR_Q_MISC_CBR_EXP_CNTR_LIMIT_EN : 0));
	}
	if (qi->tqi_readyTime && (qi->tqi_type != ATH9K_TX_QUEUE_CAB)) {
		FUNC14(ah, FUNC6(q),
			  FUNC15(qi->tqi_readyTime, AR_Q_RDYTIMECFG_DURATION) |
			  AR_Q_RDYTIMECFG_EN);
	}

	FUNC14(ah, FUNC0(q),
		  FUNC15(qi->tqi_burstTime, AR_D_CHNTIME_DUR) |
		  (qi->tqi_burstTime ? AR_D_CHNTIME_EN : 0));

	if (qi->tqi_burstTime
	    && (qi->tqi_qflags & TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE))
		FUNC13(ah, FUNC5(q), AR_Q_MISC_RDYTIME_EXP_POLICY);

	if (qi->tqi_qflags & TXQ_FLAG_BACKOFF_DISABLE)
		FUNC13(ah, FUNC2(q), AR_D_MISC_POST_FR_BKOFF_DIS);

	FUNC12(ah);

	if (qi->tqi_qflags & TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE)
		FUNC13(ah, FUNC2(q), AR_D_MISC_FRAG_BKOFF_EN);

	switch (qi->tqi_type) {
	case ATH9K_TX_QUEUE_BEACON:
		FUNC10(ah);

		FUNC13(ah, FUNC5(q),
			    AR_Q_MISC_FSP_DBA_GATED
			    | AR_Q_MISC_BEACON_USE
			    | AR_Q_MISC_CBR_INCR_DIS1);

		FUNC13(ah, FUNC2(q),
			    (AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL <<
			     AR_D_MISC_ARB_LOCKOUT_CNTRL_S)
			    | AR_D_MISC_BEACON_USE
			    | AR_D_MISC_POST_FR_BKOFF_DIS);

		FUNC12(ah);

		/*
		 * cwmin and cwmax should be 0 for beacon queue
		 * but not for IBSS as we would create an imbalance
		 * on beaconing fairness for participating nodes.
		 */
		if (FUNC7(ah) &&
		    ah->opmode != NL80211_IFTYPE_ADHOC) {
			FUNC14(ah, FUNC1(q), FUNC15(0, AR_D_LCL_IFS_CWMIN)
				  | FUNC15(0, AR_D_LCL_IFS_CWMAX)
				  | FUNC15(qi->tqi_aifs, AR_D_LCL_IFS_AIFS));
		}
		break;
	case ATH9K_TX_QUEUE_CAB:
		FUNC10(ah);

		FUNC13(ah, FUNC5(q),
			    AR_Q_MISC_FSP_DBA_GATED
			    | AR_Q_MISC_CBR_INCR_DIS1
			    | AR_Q_MISC_CBR_INCR_DIS0);
		value = (qi->tqi_readyTime -
			 (ah->config.sw_beacon_response_time -
			  ah->config.dma_beacon_response_time) -
			 ah->config.additional_swba_backoff) * 1024;
		FUNC14(ah, FUNC6(q),
			  value | AR_Q_RDYTIMECFG_EN);
		FUNC13(ah, FUNC2(q),
			    (AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL <<
			     AR_D_MISC_ARB_LOCKOUT_CNTRL_S));

		FUNC12(ah);

		break;
	case ATH9K_TX_QUEUE_PSPOLL:
		FUNC13(ah, FUNC5(q), AR_Q_MISC_CBR_INCR_DIS1);
		break;
	case ATH9K_TX_QUEUE_UAPSD:
		FUNC13(ah, FUNC2(q), AR_D_MISC_POST_FR_BKOFF_DIS);
		break;
	default:
		break;
	}

	if (qi->tqi_intFlags & ATH9K_TXQ_USE_LOCKOUT_BKOFF_DIS) {
		FUNC13(ah, FUNC2(q),
			    FUNC15(AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL,
			       AR_D_MISC_ARB_LOCKOUT_CNTRL) |
			    AR_D_MISC_POST_FR_BKOFF_DIS);
	}

	if (FUNC7(ah))
		FUNC14(ah, AR_Q_DESC_CRCCHK, AR_Q_DESC_CRCCHK_EN);

	FUNC16(ah, q);
	if (qi->tqi_qflags & TXQ_FLAG_TXINT_ENABLE) {
		ah->txok_interrupt_mask |= 1 << q;
		ah->txerr_interrupt_mask |= 1 << q;
	}
	if (qi->tqi_qflags & TXQ_FLAG_TXDESCINT_ENABLE)
		ah->txdesc_interrupt_mask |= 1 << q;
	if (qi->tqi_qflags & TXQ_FLAG_TXEOLINT_ENABLE)
		ah->txeol_interrupt_mask |= 1 << q;
	if (qi->tqi_qflags & TXQ_FLAG_TXURNINT_ENABLE)
		ah->txurn_interrupt_mask |= 1 << q;
	FUNC18(ah, qi);

	return true;
}