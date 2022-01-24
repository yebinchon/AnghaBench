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
struct ath_softc {int /*<<< orphan*/  mci_work; int /*<<< orphan*/  sc_ah; int /*<<< orphan*/  hw_pll_work; int /*<<< orphan*/  tx_complete_work; int /*<<< orphan*/  hw_check_work; int /*<<< orphan*/  paprd_work; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ath_softc *sc)
{
	FUNC2(&sc->paprd_work);
	FUNC2(&sc->hw_check_work);
	FUNC1(&sc->tx_complete_work);
	FUNC1(&sc->hw_pll_work);

#ifdef CONFIG_ATH9K_BTCOEX_SUPPORT
	if (ath9k_hw_mci_is_enabled(sc->sc_ah))
		cancel_work_sync(&sc->mci_work);
#endif
}