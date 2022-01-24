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
struct ath_softc {int /*<<< orphan*/  sc_pm_lock; int /*<<< orphan*/  sc_ah; } ;
typedef  enum ath9k_power_mode { ____Placeholder_ath9k_power_mode } ath9k_power_mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct ath_softc *sc, enum ath9k_power_mode mode)
{
	unsigned long flags;
	bool ret;

	FUNC1(&sc->sc_pm_lock, flags);
	ret = FUNC0(sc->sc_ah, mode);
	FUNC2(&sc->sc_pm_lock, flags);

	return ret;
}