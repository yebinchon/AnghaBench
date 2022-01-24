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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct pci_bus {int number; int subordinate; int /*<<< orphan*/  bridge; TYPE_1__ dev; } ;

/* Variables and functions */
 struct pci_bus* FUNC0 (struct pci_bus*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*) ; 
 struct pci_bus* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 

__attribute__((used)) static struct pci_bus *FUNC5(struct pci_bus *bus, int busnr)
{
	int rc;
	struct pci_bus *child;

	if (bus->number == busnr)
		return bus;

	child = FUNC3(FUNC2(bus), busnr);
	if (child)
		return child;

	child = FUNC0(bus, NULL, busnr);
	if (!child)
		return NULL;

	child->subordinate = busnr;
	child->dev.parent = bus->bridge;
	rc = FUNC1(child);
	if (rc) {
		FUNC4(child);
		return NULL;
	}

	return child;
}