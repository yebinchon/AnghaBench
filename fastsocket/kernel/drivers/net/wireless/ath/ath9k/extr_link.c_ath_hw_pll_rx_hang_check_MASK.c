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
typedef  int u32 ;
struct ath_softc {int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  RESET_TYPE_PLL_HANG ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC3(struct ath_softc *sc, u32 pll_sqsum)
{
	static int count;
	struct ath_common *common = FUNC0(sc->sc_ah);

	if (pll_sqsum >= 0x40000) {
		count++;
		if (count == 3) {
			FUNC2(common, RESET, "PLL WAR, resetting the chip\n");
			FUNC1(sc, RESET_TYPE_PLL_HANG);
			count = 0;
			return true;
		}
	} else {
		count = 0;
	}

	return false;
}