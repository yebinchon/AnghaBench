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
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int ampdu_factor; int /*<<< orphan*/  ampdu_density; scalar_t__ ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ath_softc {int dummy; } ;
struct ath_node {int maxampdu; int /*<<< orphan*/  mpdudensity; struct ieee80211_vif* vif; struct ieee80211_sta* sta; struct ath_softc* sc; } ;

/* Variables and functions */
 int IEEE80211_HT_MAX_AMPDU_FACTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,struct ath_node*) ; 

__attribute__((used)) static void FUNC2(struct ath_softc *sc, struct ieee80211_sta *sta,
			    struct ieee80211_vif *vif)
{
	struct ath_node *an;
	an = (struct ath_node *)sta->drv_priv;

	an->sc = sc;
	an->sta = sta;
	an->vif = vif;

	FUNC1(sc, an);

	if (sta->ht_cap.ht_supported) {
		an->maxampdu = 1 << (IEEE80211_HT_MAX_AMPDU_FACTOR +
				     sta->ht_cap.ampdu_factor);
		an->mpdudensity = FUNC0(sta->ht_cap.ampdu_density);
	}
}