#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct regulatory_request {int /*<<< orphan*/  dfs_region; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct TYPE_7__ {int txpowlimit; } ;
struct ath_softc {TYPE_4__* dfs_detector; int /*<<< orphan*/  curtxpow; TYPE_3__ config; struct ath_hw* sc_ah; } ;
struct ath_regulatory {int /*<<< orphan*/  power_limit; } ;
struct ath_hw {TYPE_2__* curchan; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* set_dfs_domain ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_5__ {int max_power; } ;

/* Variables and functions */
 struct ath_regulatory* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct wiphy*,struct regulatory_request*,struct ath_regulatory*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC6 (struct wiphy*) ; 

__attribute__((used)) static void FUNC7(struct wiphy *wiphy,
			       struct regulatory_request *request)
{
	struct ieee80211_hw *hw = FUNC6(wiphy);
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_regulatory *reg = FUNC0(ah);

	FUNC4(wiphy, request, reg);

	/* Set tx power */
	if (ah->curchan) {
		sc->config.txpowlimit = 2 * ah->curchan->chan->max_power;
		FUNC3(sc);
		FUNC1(ah, sc->config.txpowlimit, false);
		sc->curtxpow = FUNC0(ah)->power_limit;
		/* synchronize DFS detector if regulatory domain changed */
		if (sc->dfs_detector != NULL)
			sc->dfs_detector->set_dfs_domain(sc->dfs_detector,
							 request->dfs_region);
		FUNC2(sc);
	}
}