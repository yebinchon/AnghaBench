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
struct TYPE_2__ {scalar_t__ parent; } ;
struct pci_bus {int is_added; TYPE_1__ dev; scalar_t__ bridge; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*) ; 

int FUNC2(struct pci_bus *bus)
{
	int retval;

	if (bus->bridge)
		bus->dev.parent = bus->bridge;

	retval = FUNC0(&bus->dev);
	if (retval)
		return retval;

	bus->is_added = 1;

	/* Create legacy_io and legacy_mem files for this bus */
	FUNC1(bus);

	return retval;
}