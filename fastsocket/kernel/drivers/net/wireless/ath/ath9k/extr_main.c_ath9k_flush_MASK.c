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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/ * txq; } ;
struct ath_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  tx_complete_work; int /*<<< orphan*/  sc_pcu_lock; TYPE_1__ tx; int /*<<< orphan*/  sc_flags; struct ath_hw* sc_ah; } ;
struct ath_hw {int ah_flags; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int AH_UNPLUGGED ; 
 int /*<<< orphan*/  ANY ; 
 int ATH9K_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  SC_OP_INVALID ; 
 int FUNC1 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 

__attribute__((used)) static void FUNC17(struct ieee80211_hw *hw, u32 queues, bool drop)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	int timeout = 200; /* ms */
	int i, j;
	bool drain_txq;

	FUNC11(&sc->mutex);
	FUNC8(&sc->tx_complete_work);

	if (ah->ah_flags & AH_UNPLUGGED) {
		FUNC5(common, ANY, "Device has been unplugged!\n");
		FUNC12(&sc->mutex);
		return;
	}

	if (FUNC15(SC_OP_INVALID, &sc->sc_flags)) {
		FUNC5(common, ANY, "Device not present\n");
		FUNC12(&sc->mutex);
		return;
	}

	for (j = 0; j < timeout; j++) {
		bool npend = false;

		if (j)
			FUNC16(1000, 2000);

		for (i = 0; i < ATH9K_NUM_TX_QUEUES; i++) {
			if (!FUNC0(sc, i))
				continue;

			npend = FUNC1(sc, &sc->tx.txq[i]);

			if (npend)
				break;
		}

		if (!npend)
		    break;
	}

	if (drop) {
		FUNC4(sc);
		FUNC13(&sc->sc_pcu_lock);
		drain_txq = FUNC6(sc);
		FUNC14(&sc->sc_pcu_lock);

		if (!drain_txq)
			FUNC7(sc);

		FUNC3(sc);
		FUNC10(hw);
	}

	FUNC9(hw, &sc->tx_complete_work, 0);
	FUNC12(&sc->mutex);
}