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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct TYPE_2__ {unsigned int rxfilter; } ;
struct ath_softc {int /*<<< orphan*/  sc_ah; TYPE_1__ rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 unsigned int SUPPORTED_FILTERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
				   unsigned int changed_flags,
				   unsigned int *total_flags,
				   u64 multicast)
{
	struct ath_softc *sc = hw->priv;
	u32 rfilt;

	changed_flags &= SUPPORTED_FILTERS;
	*total_flags &= SUPPORTED_FILTERS;

	sc->rx.rxfilter = *total_flags;
	FUNC3(sc);
	rfilt = FUNC4(sc);
	FUNC1(sc->sc_ah, rfilt);
	FUNC2(sc);

	FUNC5(FUNC0(sc->sc_ah), CONFIG, "Set HW RX filter: 0x%x\n",
		rfilt);
}