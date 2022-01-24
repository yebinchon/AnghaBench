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
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct ieee80211_hw {TYPE_2__ conf; struct ath_softc* priv; } ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
struct ath_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sc_pcu_lock; struct ath_hw* sc_ah; int /*<<< orphan*/  sc_flags; } ;
struct TYPE_6__ {int hw_caps; } ;
struct ath_hw {int reset_power_on; int imask; int is_monitoring; scalar_t__ led_pin; TYPE_3__ caps; int /*<<< orphan*/  caldata; int /*<<< orphan*/  intr_ref_cnt; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_OUTPUT ; 
 int ATH9K_HW_CAP_EDMA ; 
 int ATH9K_HW_CAP_HT ; 
 int ATH9K_INT_BB_WATCHDOG ; 
 int ATH9K_INT_CST ; 
 int ATH9K_INT_FATAL ; 
 int ATH9K_INT_GLOBAL ; 
 int ATH9K_INT_GTT ; 
 int ATH9K_INT_RX ; 
 int ATH9K_INT_RXEOL ; 
 int ATH9K_INT_RXHP ; 
 int ATH9K_INT_RXLP ; 
 int ATH9K_INT_RXORN ; 
 int ATH9K_INT_TX ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  SC_OP_INVALID ; 
 struct ath9k_channel* FUNC0 (struct ieee80211_hw*,struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int) ; 
 int FUNC5 (struct ath_hw*,struct ath9k_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct ieee80211_hw *hw)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC3(ah);
	struct ieee80211_channel *curchan = hw->conf.chandef.chan;
	struct ath9k_channel *init_channel;
	int r;

	FUNC10(common, CONFIG,
		"Starting driver with initial channel: %d MHz\n",
		curchan->center_freq);

	FUNC8(sc);
	FUNC15(&sc->mutex);

	init_channel = FUNC0(hw, ah);

	/* Reset SERDES registers */
	FUNC4(ah, false);

	/*
	 * The basic interface to setting the hardware in a good
	 * state is ``reset''.  On return the hardware is known to
	 * be powered up and with interrupts disabled.  This must
	 * be followed by initialization of the appropriate bits
	 * and then setup of the interrupt mask.
	 */
	FUNC17(&sc->sc_pcu_lock);

	FUNC13(&ah->intr_ref_cnt, -1);

	r = FUNC5(ah, init_channel, ah->caldata, false);
	if (r) {
		FUNC11(common,
			"Unable to reset hardware; reset status %d (freq %u MHz)\n",
			r, curchan->center_freq);
		ah->reset_power_on = false;
	}

	/* Setup our intr mask. */
	ah->imask = ATH9K_INT_TX | ATH9K_INT_RXEOL |
		    ATH9K_INT_RXORN | ATH9K_INT_FATAL |
		    ATH9K_INT_GLOBAL;

	if (ah->caps.hw_caps & ATH9K_HW_CAP_EDMA)
		ah->imask |= ATH9K_INT_RXHP |
			     ATH9K_INT_RXLP |
			     ATH9K_INT_BB_WATCHDOG;
	else
		ah->imask |= ATH9K_INT_RX;

	ah->imask |= ATH9K_INT_GTT;

	if (ah->caps.hw_caps & ATH9K_HW_CAP_HT)
		ah->imask |= ATH9K_INT_CST;

	FUNC12(sc);

	FUNC14(SC_OP_INVALID, &sc->sc_flags);
	sc->sc_ah->is_monitoring = false;

	if (!FUNC9(sc, false))
		ah->reset_power_on = false;

	if (ah->led_pin >= 0) {
		FUNC2(ah, ah->led_pin,
				    AR_GPIO_OUTPUT_MUX_AS_OUTPUT);
		FUNC6(ah, ah->led_pin, 0);
	}

	/*
	 * Reset key cache to sane defaults (all entries cleared) instead of
	 * semi-random values after suspend/resume.
	 */
	FUNC1(sc->sc_ah);

	FUNC18(&sc->sc_pcu_lock);

	FUNC16(&sc->mutex);

	FUNC7(sc);

	return 0;
}