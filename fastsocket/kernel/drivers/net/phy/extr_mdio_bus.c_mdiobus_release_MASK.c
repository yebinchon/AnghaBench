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
struct mii_bus {scalar_t__ state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MDIOBUS_ALLOCATED ; 
 scalar_t__ MDIOBUS_RELEASED ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*) ; 
 struct mii_bus* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *d)
{
	struct mii_bus *bus = FUNC2(d);
	FUNC0(bus->state != MDIOBUS_RELEASED &&
	       /* for compatibility with error handling in drivers */
	       bus->state != MDIOBUS_ALLOCATED);
	FUNC1(bus);
}