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
struct ieee80211_vif {int type; int p2p; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 struct ath_common* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct ieee80211_hw *hw,
				  struct ieee80211_vif *vif,
				  enum nl80211_iftype new_type,
				  bool p2p)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC3(sc->sc_ah);

	FUNC7(common, CONFIG, "Change Interface\n");
	FUNC8(&sc->mutex);

	if (FUNC6(vif->type))
		FUNC1(sc, vif);

	vif->type = new_type;
	vif->p2p = p2p;

	FUNC5(sc);
	FUNC2(hw, vif);
	FUNC4(sc);

	if (FUNC6(vif->type))
		FUNC0(sc, vif);

	FUNC9(&sc->mutex);
	return 0;
}