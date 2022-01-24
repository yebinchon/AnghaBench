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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  sc_ah; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;

/* Variables and functions */
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ath_softc*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif,
			      enum ieee80211_ampdu_mlme_action action,
			      struct ieee80211_sta *sta,
			      u16 tid, u16 *ssn, u8 buf_size)
{
	struct ath_softc *sc = hw->priv;
	bool flush = false;
	int ret = 0;

	FUNC9();

	switch (action) {
	case IEEE80211_AMPDU_RX_START:
		break;
	case IEEE80211_AMPDU_RX_STOP:
		break;
	case IEEE80211_AMPDU_TX_START:
		FUNC2(sc);
		ret = FUNC5(sc, sta, tid, ssn);
		if (!ret)
			FUNC7(vif, sta->addr, tid);
		FUNC1(sc);
		break;
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		flush = true;
	case IEEE80211_AMPDU_TX_STOP_CONT:
		FUNC2(sc);
		FUNC6(sc, sta, tid);
		if (!flush)
			FUNC8(vif, sta->addr, tid);
		FUNC1(sc);
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		FUNC2(sc);
		FUNC4(sc, sta, tid);
		FUNC1(sc);
		break;
	default:
		FUNC3(FUNC0(sc->sc_ah), "Unknown AMPDU action\n");
	}

	FUNC10();

	return ret;
}