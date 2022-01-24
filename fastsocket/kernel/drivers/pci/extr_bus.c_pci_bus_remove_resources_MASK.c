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
struct pci_bus {int /*<<< orphan*/  resources; scalar_t__* resource; } ;

/* Variables and functions */
 int PCI_BUS_NUM_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct pci_bus *bus)
{
	int i;

	for (i = 0; i < PCI_BUS_NUM_RESOURCES; i++)
		bus->resource[i] = 0;

	FUNC0(&bus->resources);
}