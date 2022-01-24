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
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  mutex; struct ath_hw* sc_ah; } ;
struct ath_hw {int /*<<< orphan*/  coverage_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw, u8 coverage_class)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;

	FUNC3(&sc->mutex);
	ah->coverage_class = coverage_class;

	FUNC2(sc);
	FUNC0(ah);
	FUNC1(sc);

	FUNC4(&sc->mutex);
}