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
struct ath_softc {int /*<<< orphan*/  rx_poll_timer; scalar_t__ hw_busy_count; int /*<<< orphan*/  hw; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	bool ret = true;

	FUNC6(sc->hw);

	sc->hw_busy_count = 0;
	FUNC3(sc);
	FUNC5(&sc->rx_poll_timer);

	FUNC0(sc);
	FUNC1(ah);

	if (!FUNC2(sc))
		ret = false;

	if (!FUNC4(sc))
		ret = false;

	return ret;
}