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
typedef  int /*<<< orphan*/  u32 ;
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int /*<<< orphan*/  imask; } ;
struct ath_common {int dummy; } ;
struct ath_beacon_config {int /*<<< orphan*/  beacon_interval; scalar_t__ enable_beacon; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_INT_SWBA ; 
 int /*<<< orphan*/  ATH_BCBUF ; 
 int /*<<< orphan*/  BEACON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ath_softc *sc,
				   struct ath_beacon_config *conf)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	u32 nexttbtt, intval;

	/* NB: the beacon interval is kept internally in TU's */
	intval = FUNC0(conf->beacon_interval);
	intval /= ATH_BCBUF;
	nexttbtt = intval;

	if (conf->enable_beacon)
		ah->imask |= ATH9K_INT_SWBA;
	else
		ah->imask &= ~ATH9K_INT_SWBA;

	FUNC3(common, BEACON,
		"AP (%s) nexttbtt: %u intval: %u conf_intval: %u\n",
		(conf->enable_beacon) ? "Enable" : "Disable",
		nexttbtt, intval, conf->beacon_interval);

	FUNC1(sc, nexttbtt, intval, true);
}