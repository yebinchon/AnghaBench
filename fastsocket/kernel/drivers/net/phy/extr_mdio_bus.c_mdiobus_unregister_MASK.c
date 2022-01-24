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
struct mii_bus {scalar_t__ state; TYPE_1__** phy_map; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MDIOBUS_REGISTERED ; 
 scalar_t__ MDIOBUS_UNREGISTERED ; 
 int PHY_MAX_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mii_bus *bus)
{
	int i;

	FUNC0(bus->state != MDIOBUS_REGISTERED);
	bus->state = MDIOBUS_UNREGISTERED;

	FUNC1(&bus->dev);
	for (i = 0; i < PHY_MAX_ADDR; i++) {
		if (bus->phy_map[i])
			FUNC2(&bus->phy_map[i]->dev);
		bus->phy_map[i] = NULL;
	}
}