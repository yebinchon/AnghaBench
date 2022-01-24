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
struct ieee80211_hw {struct ath_softc* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/ * frag; } ;
struct ath_softc {int ps_idle; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_pcu_lock; TYPE_1__ rx; int /*<<< orphan*/  bcon_tasklet; int /*<<< orphan*/  intr_tq; int /*<<< orphan*/  irq; int /*<<< orphan*/  rx_poll_timer; struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ led_pin; int /*<<< orphan*/  caldata; scalar_t__ curchan; int /*<<< orphan*/  imask; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANY ; 
 int /*<<< orphan*/  ATH9K_INT_GLOBAL ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  SC_OP_INVALID ; 
 scalar_t__ FUNC0 (struct ieee80211_hw*,struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,scalar_t__) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC23(struct ieee80211_hw *hw)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	bool prev_idle;

	FUNC15(&sc->mutex);

	FUNC10(sc);
	FUNC13(&sc->rx_poll_timer);

	if (FUNC22(SC_OP_INVALID, &sc->sc_flags)) {
		FUNC11(common, ANY, "Device not present\n");
		FUNC16(&sc->mutex);
		return;
	}

	/* Ensure HW is awake when we try to shut it down. */
	FUNC9(sc);

	FUNC18(&sc->sc_pcu_lock);

	/* prevent tasklets to enable interrupts once we disable them */
	ah->imask &= ~ATH9K_INT_GLOBAL;

	/* make sure h/w will not generate any interrupt
	 * before setting the invalid flag. */
	FUNC4(ah);

	FUNC19(&sc->sc_pcu_lock);

	/* we can now sync irq and kill any running tasklets, since we already
	 * disabled interrupts and not holding a spin lock */
	FUNC20(sc->irq);
	FUNC21(&sc->intr_tq);
	FUNC21(&sc->bcon_tasklet);

	prev_idle = sc->ps_idle;
	sc->ps_idle = true;

	FUNC18(&sc->sc_pcu_lock);

	if (ah->led_pin >= 0) {
		FUNC7(ah, ah->led_pin, 1);
		FUNC1(ah, ah->led_pin);
	}

	FUNC12(sc);

	if (sc->rx.frag) {
		FUNC14(sc->rx.frag);
		sc->rx.frag = NULL;
	}

	if (!ah->curchan)
		ah->curchan = FUNC0(hw, ah);

	FUNC6(ah, ah->curchan, ah->caldata, false);
	FUNC5(ah);

	FUNC3(ah, true);

	FUNC19(&sc->sc_pcu_lock);

	FUNC8(sc);

	FUNC17(SC_OP_INVALID, &sc->sc_flags);
	sc->ps_idle = prev_idle;

	FUNC16(&sc->mutex);

	FUNC11(common, CONFIG, "Driver halt\n");
}