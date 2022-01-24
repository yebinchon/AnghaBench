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
struct pmac_i2c_bus {int /*<<< orphan*/  mutex; scalar_t__ opened; int /*<<< orphan*/  (* close ) (struct pmac_i2c_bus*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pmac_i2c_bus*) ; 

void FUNC3(struct pmac_i2c_bus *bus)
{
	FUNC0(!bus->opened);
	if (bus->close)
		bus->close(bus);
	bus->opened = 0;
	FUNC1(&bus->mutex);
}