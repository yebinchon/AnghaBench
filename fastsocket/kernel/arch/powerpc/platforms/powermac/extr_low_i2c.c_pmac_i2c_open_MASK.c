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
struct pmac_i2c_bus {int polled; int opened; int (* open ) (struct pmac_i2c_bus*) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ pmac_i2c_force_poll ; 
 int /*<<< orphan*/  pmac_i2c_mode_std ; 
 int FUNC2 (struct pmac_i2c_bus*) ; 

int FUNC3(struct pmac_i2c_bus *bus, int polled)
{
	int rc;

	FUNC0(&bus->mutex);
	bus->polled = polled || pmac_i2c_force_poll;
	bus->opened = 1;
	bus->mode = pmac_i2c_mode_std;
	if (bus->open && (rc = bus->open(bus)) != 0) {
		bus->opened = 0;
		FUNC1(&bus->mutex);
		return rc;
	}
	return 0;
}