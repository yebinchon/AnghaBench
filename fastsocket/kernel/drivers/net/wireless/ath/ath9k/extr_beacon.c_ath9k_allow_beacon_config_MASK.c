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
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ath_vif {int /*<<< orphan*/  primary_sta_vif; } ;
struct ath_softc {int nbcnvifs; int /*<<< orphan*/  sc_flags; TYPE_1__* sc_ah; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {scalar_t__ opmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  SC_OP_BEACONS ; 
 struct ath_common* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC3(struct ath_softc *sc, struct ieee80211_vif *vif)
{
	struct ath_common *common = FUNC0(sc->sc_ah);
	struct ath_vif *avp = (void *)vif->drv_priv;

	if (sc->sc_ah->opmode == NL80211_IFTYPE_AP) {
		if ((vif->type != NL80211_IFTYPE_AP) ||
		    (sc->nbcnvifs > 1)) {
			FUNC1(common, CONFIG,
				"An AP interface is already present !\n");
			return false;
		}
	}

	if (sc->sc_ah->opmode == NL80211_IFTYPE_STATION) {
		if ((vif->type == NL80211_IFTYPE_STATION) &&
		    FUNC2(SC_OP_BEACONS, &sc->sc_flags) &&
		    !avp->primary_sta_vif) {
			FUNC1(common, CONFIG,
				"Beacon already configured for a station interface\n");
			return false;
		}
	}

	return true;
}