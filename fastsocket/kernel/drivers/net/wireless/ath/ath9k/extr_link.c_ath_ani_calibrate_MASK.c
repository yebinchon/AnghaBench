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
typedef  unsigned int u32 ;
struct ath_softc {int /*<<< orphan*/  paprd_work; int /*<<< orphan*/  hw; struct ath_hw* sc_ah; int /*<<< orphan*/  sc_pm_lock; int /*<<< orphan*/  ps_flags; } ;
struct TYPE_4__ {unsigned int ani_poll_interval; scalar_t__ enable_ani; } ;
struct ath_hw {scalar_t__ opmode; scalar_t__ power_mode; scalar_t__ ani_skip_count; int /*<<< orphan*/  paprd_table_write_done; TYPE_3__* caldata; TYPE_1__ config; int /*<<< orphan*/  rxchainmask; int /*<<< orphan*/  curchan; } ;
struct TYPE_5__ {unsigned int longcal_timer; unsigned int shortcal_timer; unsigned int resetcal_timer; unsigned int checkani_timer; int /*<<< orphan*/  timer; scalar_t__ caldone; } ;
struct ath_common {TYPE_2__ ani; int /*<<< orphan*/  cc_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  paprd_done; scalar_t__ nfcal_interference; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANI ; 
 scalar_t__ ATH9K_PM_AWAKE ; 
 scalar_t__ ATH_ANI_MAX_SKIP_COUNT ; 
 unsigned int ATH_AP_SHORT_CALINTERVAL ; 
 unsigned int ATH_LONG_CALINTERVAL ; 
 unsigned int ATH_LONG_CALINTERVAL_INT ; 
 unsigned int ATH_RESTART_CALINTERVAL ; 
 unsigned int ATH_STA_SHORT_CALINTERVAL ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  PS_WAIT_FOR_ANI ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 unsigned int FUNC12 (scalar_t__) ; 
 unsigned int FUNC13 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC18(unsigned long data)
{
	struct ath_softc *sc = (struct ath_softc *)data;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC4(ah);
	bool longcal = false;
	bool shortcal = false;
	bool aniflag = false;
	unsigned int timestamp = FUNC12(jiffies);
	u32 cal_interval, short_cal_interval, long_cal_interval;
	unsigned long flags;

	if (ah->caldata && ah->caldata->nfcal_interference)
		long_cal_interval = ATH_LONG_CALINTERVAL_INT;
	else
		long_cal_interval = ATH_LONG_CALINTERVAL;

	short_cal_interval = (ah->opmode == NL80211_IFTYPE_AP) ?
		ATH_AP_SHORT_CALINTERVAL : ATH_STA_SHORT_CALINTERVAL;

	/* Only calibrate if awake */
	if (sc->sc_ah->power_mode != ATH9K_PM_AWAKE) {
		if (++ah->ani_skip_count >= ATH_ANI_MAX_SKIP_COUNT) {
			FUNC16(&sc->sc_pm_lock, flags);
			sc->ps_flags |= PS_WAIT_FOR_ANI;
			FUNC17(&sc->sc_pm_lock, flags);
		}
		goto set_timer;
	}
	ah->ani_skip_count = 0;
	FUNC16(&sc->sc_pm_lock, flags);
	sc->ps_flags &= ~PS_WAIT_FOR_ANI;
	FUNC17(&sc->sc_pm_lock, flags);

	FUNC7(sc);

	/* Long calibration runs independently of short calibration. */
	if ((timestamp - common->ani.longcal_timer) >= long_cal_interval) {
		longcal = true;
		common->ani.longcal_timer = timestamp;
	}

	/* Short calibration applies only while caldone is false */
	if (!common->ani.caldone) {
		if ((timestamp - common->ani.shortcal_timer) >= short_cal_interval) {
			shortcal = true;
			common->ani.shortcal_timer = timestamp;
			common->ani.resetcal_timer = timestamp;
		}
	} else {
		if ((timestamp - common->ani.resetcal_timer) >=
		    ATH_RESTART_CALINTERVAL) {
			common->ani.caldone = FUNC5(ah);
			if (common->ani.caldone)
				common->ani.resetcal_timer = timestamp;
		}
	}

	/* Verify whether we must check ANI */
	if (sc->sc_ah->config.enable_ani
	    && (timestamp - common->ani.checkani_timer) >=
	    ah->config.ani_poll_interval) {
		aniflag = true;
		common->ani.checkani_timer = timestamp;
	}

	/* Call ANI routine if necessary */
	if (aniflag) {
		FUNC16(&common->cc_lock, flags);
		FUNC2(ah, ah->curchan);
		FUNC10(sc);
		FUNC17(&common->cc_lock, flags);
	}

	/* Perform calibration if necessary */
	if (longcal || shortcal) {
		common->ani.caldone =
			FUNC3(ah, ah->curchan,
					   ah->rxchainmask, longcal);
	}

	FUNC8(common, ANI,
		"Calibration @%lu finished: %s %s %s, caldone: %s\n",
		jiffies,
		longcal ? "long" : "", shortcal ? "short" : "",
		aniflag ? "ani" : "", common->ani.caldone ? "true" : "false");

	FUNC1(sc);
	FUNC6(sc);

set_timer:
	/*
	* Set timer interval based on previous results.
	* The interval must be the shortest necessary to satisfy ANI,
	* short calibration and long calibration.
	*/
	cal_interval = ATH_LONG_CALINTERVAL;
	if (sc->sc_ah->config.enable_ani)
		cal_interval = FUNC13(cal_interval,
				   (u32)ah->config.ani_poll_interval);
	if (!common->ani.caldone)
		cal_interval = FUNC13(cal_interval, (u32)short_cal_interval);

	FUNC14(&common->ani.timer, jiffies + FUNC15(cal_interval));

	if (FUNC0(ah) && ah->caldata) {
		if (!ah->caldata->paprd_done) {
			FUNC11(sc->hw, &sc->paprd_work);
		} else if (!ah->paprd_table_write_done) {
			FUNC7(sc);
			FUNC9(sc);
			FUNC6(sc);
		}
	}
}