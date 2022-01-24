#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath_common {int keymax; } ;
struct ath5k_hw {int imask; int ah_ack_bitrate_high; int /*<<< orphan*/  tx_complete_work; TYPE_3__* hw; int /*<<< orphan*/  status; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** bslot; int /*<<< orphan*/  curchan; int /*<<< orphan*/  opmode; } ;
struct TYPE_4__ {int /*<<< orphan*/  chan; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct TYPE_6__ {TYPE_2__ conf; } ;

/* Variables and functions */
 int AR5K_INT_FATAL ; 
 int AR5K_INT_GLOBAL ; 
 int AR5K_INT_MIB ; 
 int AR5K_INT_RXEOL ; 
 int AR5K_INT_RXERR ; 
 int AR5K_INT_RXOK ; 
 int AR5K_INT_RXORN ; 
 int AR5K_INT_TXDESC ; 
 int AR5K_INT_TXEOL ; 
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_RESET ; 
 int /*<<< orphan*/  ATH5K_TX_COMPLETE_POLL_INT ; 
 int /*<<< orphan*/  ATH_STAT_STARTED ; 
 struct ath_common* FUNC2 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  ath5k_modparam_no_hw_rfkill_switch ; 
 int FUNC3 (struct ath5k_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(struct ieee80211_hw *hw)
{
	struct ath5k_hw *ah = hw->priv;
	struct ath_common *common = FUNC2(ah);
	int ret, i;

	FUNC10(&ah->lock);

	FUNC1(ah, ATH5K_DEBUG_RESET, "mode %d\n", ah->opmode);

	/*
	 * Stop anything previously setup.  This is safe
	 * no matter this is the first time through or not.
	 */
	FUNC5(ah);

	/*
	 * The basic interface to setting the hardware in a good
	 * state is ``reset''.  On return the hardware is known to
	 * be powered up and with interrupts disabled.  This must
	 * be followed by initialization of the appropriate bits
	 * and then setup of the interrupt mask.
	 */
	ah->curchan = ah->hw->conf.chandef.chan;
	ah->imask = AR5K_INT_RXOK
		| AR5K_INT_RXERR
		| AR5K_INT_RXEOL
		| AR5K_INT_RXORN
		| AR5K_INT_TXDESC
		| AR5K_INT_TXEOL
		| AR5K_INT_FATAL
		| AR5K_INT_GLOBAL
		| AR5K_INT_MIB;

	ret = FUNC3(ah, NULL, false);
	if (ret)
		goto done;

	if (!ath5k_modparam_no_hw_rfkill_switch)
		FUNC4(ah);

	/*
	 * Reset the key cache since some parts do not reset the
	 * contents on initial power up or resume from suspend.
	 */
	for (i = 0; i < common->keymax; i++)
		FUNC6(common, (u16) i);

	/* Use higher rates for acks instead of base
	 * rate */
	ah->ah_ack_bitrate_high = true;

	for (i = 0; i < FUNC0(ah->bslot); i++)
		ah->bslot[i] = NULL;

	ret = 0;
done:
	FUNC8();
	FUNC11(&ah->lock);

	FUNC12(ATH_STAT_STARTED, ah->status);
	FUNC7(ah->hw, &ah->tx_complete_work,
			FUNC9(ATH5K_TX_COMPLETE_POLL_INT));

	return ret;
}