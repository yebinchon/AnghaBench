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
typedef  int u32 ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ath_softc {TYPE_2__* hw; int /*<<< orphan*/  sc_ah; } ;
struct ath_rate_priv {int /*<<< orphan*/  ht_cap; } ;
struct TYPE_3__ {int /*<<< orphan*/  chandef; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int IEEE80211_RC_BW_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *priv, struct ieee80211_supported_band *sband,
			    struct ieee80211_sta *sta, void *priv_sta,
			    u32 changed)
{
	struct ath_softc *sc = priv;
	struct ath_rate_priv *ath_rc_priv = priv_sta;

	if (changed & IEEE80211_RC_BW_CHANGED) {
		ath_rc_priv->ht_cap = FUNC2(sc, sta);
		FUNC3(sc, priv_sta);

		FUNC1(FUNC0(sc->sc_ah), CONFIG,
			"Operating HT Bandwidth changed to: %d\n",
			FUNC4(&sc->hw->conf.chandef));
	}
}