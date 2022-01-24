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
typedef  int u32 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  spectral_mode; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* spectral_scan_trigger ) (struct ath_hw*) ;} ;

/* Variables and functions */
 int ATH9K_RX_FILTER_PHYERR ; 
 int ATH9K_RX_FILTER_PHYRADAR ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int FUNC1 (struct ath_hw*) ; 
 TYPE_1__* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 

void FUNC9(struct ieee80211_hw *hw)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC0(ah);
	u32 rxfilter;

	if (!FUNC2(ah)->spectral_scan_trigger) {
		FUNC7(common, "spectrum analyzer not implemented on this hardware\n");
		return;
	}

	FUNC5(sc);
	rxfilter = FUNC1(ah);
	FUNC3(ah, rxfilter |
				 ATH9K_RX_FILTER_PHYRADAR |
				 ATH9K_RX_FILTER_PHYERR);

	/* TODO: usually this should not be neccesary, but for some reason
	 * (or in some mode?) the trigger must be called after the
	 * configuration, otherwise the register will have its values reset
	 * (on my ar9220 to value 0x01002310)
	 */
	FUNC6(hw, sc->spectral_mode);
	FUNC2(ah)->spectral_scan_trigger(ah);
	FUNC4(sc);
}