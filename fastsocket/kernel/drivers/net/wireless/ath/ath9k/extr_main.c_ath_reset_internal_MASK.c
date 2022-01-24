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
struct ath9k_hw_cal_data {int dummy; } ;
struct ath_softc {int /*<<< orphan*/  intr_tq; int /*<<< orphan*/  sc_pcu_lock; TYPE_2__* hw; struct ath_hw* sc_ah; struct ath9k_hw_cal_data caldata; } ;
struct ath_hw {struct ath9k_channel* curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int /*<<< orphan*/  channel; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int EIO ; 
 int IEEE80211_CONF_OFFCHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  RESET_TYPE_BB_HANG ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 int FUNC5 (struct ath_hw*,struct ath9k_channel*,struct ath9k_hw_cal_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_common*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct ath_softc *sc, struct ath9k_channel *hchan)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	struct ath9k_hw_cal_data *caldata = NULL;
	bool fastcc = true;
	int r;

	FUNC1(sc);

	FUNC14(&sc->intr_tq);
	FUNC12(&sc->sc_pcu_lock);

	if (!(sc->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL)) {
		fastcc = false;
		caldata = &sc->caldata;
	}

	if (!hchan) {
		fastcc = false;
		hchan = ah->curchan;
	}

	if (!FUNC11(sc))
		fastcc = false;

	FUNC9(common, CONFIG, "Reset to %u MHz, HT40: %d fastcc: %d\n",
		hchan->channel, FUNC0(hchan), fastcc);

	r = FUNC5(ah, hchan, caldata, fastcc);
	if (r) {
		FUNC10(common,
			"Unable to reset channel, reset status %d\n", r);

		FUNC3(ah);
		FUNC7(sc, RESET_TYPE_BB_HANG);

		goto out;
	}

	if (FUNC4(sc->sc_ah) &&
	    (sc->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL))
		FUNC6(sc, true, false);

	if (!FUNC8(sc, true))
		r = -EIO;

out:
	FUNC13(&sc->sc_pcu_lock);
	FUNC15(&sc->intr_tq);

	return r;
}