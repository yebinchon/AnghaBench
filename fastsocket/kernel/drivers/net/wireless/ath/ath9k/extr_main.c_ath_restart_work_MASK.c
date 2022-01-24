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
struct ath_softc {int /*<<< orphan*/  hw_pll_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  sc_ah; int /*<<< orphan*/  tx_complete_work; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH_PLL_WORK_INTERVAL ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ath_softc *sc)
{
	FUNC4(sc->hw, &sc->tx_complete_work, 0);

	if (FUNC1(sc->sc_ah) || FUNC0(sc->sc_ah))
		FUNC4(sc->hw, &sc->hw_pll_work,
				     FUNC5(ATH_PLL_WORK_INTERVAL));

	FUNC3(sc, 3);
	FUNC2(sc);
}