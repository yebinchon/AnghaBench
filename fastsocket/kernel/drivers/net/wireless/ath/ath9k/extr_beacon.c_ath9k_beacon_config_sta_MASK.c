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
struct ath_beacon_config {int beacon_interval; int dtim_period; int dtim_count; int listen_interval; int /*<<< orphan*/  bmiss_timeout; } ;
struct ath9k_beacon_state {int bs_intval; int bs_nexttbtt; int bs_dtimperiod; int bs_nextdtim; int bs_cfpperiod; int bs_cfpnext; int bs_bmissthreshold; int bs_sleepduration; scalar_t__ bs_cfpmaxduration; int /*<<< orphan*/  bs_tsfoor_threshold; } ;
typedef  int /*<<< orphan*/  bs ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_INT_BMISS ; 
 int /*<<< orphan*/  ATH9K_TSFOOR_THRESHOLD ; 
 int ATH_DEFAULT_BMISS_LIMIT ; 
 int /*<<< orphan*/  BEACON ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUDGE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SC_OP_PRIM_STA_VIF ; 
 int FUNC2 (int,int) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,struct ath9k_beacon_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct ath9k_beacon_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ath_softc *sc,
				    struct ath_beacon_config *conf)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC3(ah);
	struct ath9k_beacon_state bs;
	int dtimperiod, dtimcount, sleepduration;
	int cfpperiod, cfpcount;
	u32 nexttbtt = 0, intval, tsftu;
	u64 tsf;
	int num_beacons, offset, dtim_dec_count, cfp_dec_count;

	/* No need to configure beacon if we are not associated */
	if (!FUNC12(SC_OP_PRIM_STA_VIF, &sc->sc_flags)) {
		FUNC9(common, BEACON,
			"STA is not yet associated..skipping beacon config\n");
		return;
	}

	FUNC10(&bs, 0, sizeof(bs));
	intval = conf->beacon_interval;

	/*
	 * Setup dtim and cfp parameters according to
	 * last beacon we received (which may be none).
	 */
	dtimperiod = conf->dtim_period;
	dtimcount = conf->dtim_count;
	if (dtimcount >= dtimperiod)	/* NB: sanity check */
		dtimcount = 0;
	cfpperiod = 1;			/* NB: no PCF support yet */
	cfpcount = 0;

	sleepduration = conf->listen_interval * intval;

	/*
	 * Pull nexttbtt forward to reflect the current
	 * TSF and calculate dtim+cfp state for the result.
	 */
	tsf = FUNC6(ah);
	tsftu = FUNC2(tsf>>32, tsf) + FUDGE;

	num_beacons = tsftu / intval + 1;
	offset = tsftu % intval;
	nexttbtt = tsftu - offset;
	if (offset)
		nexttbtt += intval;

	/* DTIM Beacon every dtimperiod Beacon */
	dtim_dec_count = num_beacons % dtimperiod;
	/* CFP every cfpperiod DTIM Beacon */
	cfp_dec_count = (num_beacons / dtimperiod) % cfpperiod;
	if (dtim_dec_count)
		cfp_dec_count++;

	dtimcount -= dtim_dec_count;
	if (dtimcount < 0)
		dtimcount += dtimperiod;

	cfpcount -= cfp_dec_count;
	if (cfpcount < 0)
		cfpcount += cfpperiod;

	bs.bs_intval = intval;
	bs.bs_nexttbtt = nexttbtt;
	bs.bs_dtimperiod = dtimperiod*intval;
	bs.bs_nextdtim = bs.bs_nexttbtt + dtimcount*intval;
	bs.bs_cfpperiod = cfpperiod*bs.bs_dtimperiod;
	bs.bs_cfpnext = bs.bs_nextdtim + cfpcount*bs.bs_dtimperiod;
	bs.bs_cfpmaxduration = 0;

	/*
	 * Calculate the number of consecutive beacons to miss* before taking
	 * a BMISS interrupt. The configuration is specified in TU so we only
	 * need calculate based	on the beacon interval.  Note that we clamp the
	 * result to at most 15 beacons.
	 */
	if (sleepduration > intval) {
		bs.bs_bmissthreshold = conf->listen_interval *
			ATH_DEFAULT_BMISS_LIMIT / 2;
	} else {
		bs.bs_bmissthreshold = FUNC0(conf->bmiss_timeout, intval);
		if (bs.bs_bmissthreshold > 15)
			bs.bs_bmissthreshold = 15;
		else if (bs.bs_bmissthreshold <= 0)
			bs.bs_bmissthreshold = 1;
	}

	/*
	 * Calculate sleep duration. The configuration is given in ms.
	 * We ensure a multiple of the beacon period is used. Also, if the sleep
	 * duration is greater than the DTIM period then it makes senses
	 * to make it a multiple of that.
	 *
	 * XXX fixed at 100ms
	 */

	bs.bs_sleepduration = FUNC11(FUNC1(100), sleepduration);
	if (bs.bs_sleepduration > bs.bs_dtimperiod)
		bs.bs_sleepduration = bs.bs_dtimperiod;

	/* TSF out of range threshold fixed at 1 second */
	bs.bs_tsfoor_threshold = ATH9K_TSFOOR_THRESHOLD;

	FUNC9(common, BEACON, "tsf: %llu tsftu: %u\n", tsf, tsftu);
	FUNC9(common, BEACON,
		"bmiss: %u sleep: %u cfp-period: %u maxdur: %u next: %u\n",
		bs.bs_bmissthreshold, bs.bs_sleepduration,
		bs.bs_cfpperiod, bs.bs_cfpmaxduration, bs.bs_cfpnext);

	/* Set the computed STA beacon timers */

	FUNC4(ah);
	FUNC8(ah, &bs);
	ah->imask |= ATH9K_INT_BMISS;

	FUNC7(ah);
	FUNC5(ah);
}