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
typedef  int u64 ;
typedef  int u32 ;
struct ath_softc {int /*<<< orphan*/  sc_flags; struct ath_hw* sc_ah; } ;
struct ath_hw {int /*<<< orphan*/  imask; } ;
struct ath_common {int dummy; } ;
struct ath_beacon_config {int beacon_interval; scalar_t__ enable_beacon; int /*<<< orphan*/  ibss_creator; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_INT_SWBA ; 
 int /*<<< orphan*/  BEACON ; 
 int FUDGE ; 
 int /*<<< orphan*/  SC_OP_BEACONS ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,int,int,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ath_softc *sc,
				      struct ath_beacon_config *conf)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC3(ah);
	u32 intval, nexttbtt;

	FUNC5(sc);

	intval = FUNC1(conf->beacon_interval);

	if (conf->ibss_creator) {
		nexttbtt = intval;
	} else {
		u32 tbtt, offset, tsftu;
		u64 tsf;

		/*
		 * Pull nexttbtt forward to reflect the current
		 * sync'd TSF.
		 */
		tsf = FUNC4(ah);
		tsftu = FUNC0(tsf >> 32, tsf) + FUDGE;
		offset = tsftu % conf->beacon_interval;
		tbtt = tsftu - offset;
		if (offset)
			tbtt += conf->beacon_interval;

		nexttbtt = FUNC1(tbtt);
	}

	if (conf->enable_beacon)
		ah->imask |= ATH9K_INT_SWBA;
	else
		ah->imask &= ~ATH9K_INT_SWBA;

	FUNC6(common, BEACON,
		"IBSS (%s) nexttbtt: %u intval: %u conf_intval: %u\n",
		(conf->enable_beacon) ? "Enable" : "Disable",
		nexttbtt, intval, conf->beacon_interval);

	FUNC2(sc, nexttbtt, intval, conf->ibss_creator);

	/*
	 * Set the global 'beacon has been configured' flag for the
	 * joiner case in IBSS mode.
	 */
	if (!conf->ibss_creator && conf->enable_beacon)
		FUNC7(SC_OP_BEACONS, &sc->sc_flags);
}