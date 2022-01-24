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
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath_vif {int av_bslot; int /*<<< orphan*/  tsf_adjust; } ;
struct ath_beacon_config {int beacon_interval; } ;
struct ath_softc {struct ath_beacon_config cur_beacon_conf; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int ATH_BCBUF ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ath_softc *sc, struct ieee80211_vif *vif)
{
	struct ath_common *common = FUNC1(sc->sc_ah);
	struct ath_beacon_config *cur_conf = &sc->cur_beacon_conf;
	struct ath_vif *avp = (void *)vif->drv_priv;
	u64 tsfadjust;

	if (avp->av_bslot == 0)
		return;

	tsfadjust = cur_conf->beacon_interval * avp->av_bslot / ATH_BCBUF;
	avp->tsf_adjust = FUNC3(FUNC0(tsfadjust));

	FUNC2(common, CONFIG, "tsfadjust is: %llu for bslot: %d\n",
		(unsigned long long)tsfadjust, avp->av_bslot);
}