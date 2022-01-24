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
struct mii_bus {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR7_RESET_BIT_MDIO ; 
 int /*<<< orphan*/  CPMAC_MDIO_CONTROL ; 
 int FUNC0 (int) ; 
 int MDIOC_ENABLE ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus)
{
	FUNC2(AR7_RESET_BIT_MDIO);
	FUNC3(bus->priv, CPMAC_MDIO_CONTROL, MDIOC_ENABLE |
		    FUNC0(FUNC1() / 2200000 - 1));
	return 0;
}