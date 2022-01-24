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
struct ieee80211_vif {int /*<<< orphan*/  type; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  nvifs; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 struct ath_common* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC2(sc->sc_ah);

	FUNC6(common, CONFIG, "Detach Interface\n");

	FUNC7(&sc->mutex);

	sc->nvifs--;

	if (FUNC5(vif->type))
		FUNC0(sc, vif);

	FUNC4(sc);
	FUNC1(hw, NULL);
	FUNC3(sc);

	FUNC8(&sc->mutex);
}