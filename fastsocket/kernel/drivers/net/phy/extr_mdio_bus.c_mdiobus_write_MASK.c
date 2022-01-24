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
typedef  int /*<<< orphan*/  u16 ;
struct mii_bus {int (* write ) (struct mii_bus*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mii_bus*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct mii_bus *bus, int addr, u16 regnum, u16 val)
{
	int err;

	FUNC0(FUNC1());

	FUNC2(&bus->mdio_lock);
	err = bus->write(bus, addr, regnum, val);
	FUNC3(&bus->mdio_lock);

	return err;
}