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
struct pci_bus {int number; int /*<<< orphan*/  devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*) ; 
 struct pci_bus* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 

__attribute__((used)) static void FUNC5(struct pci_bus *bus, int busnr)
{
	struct pci_bus *child;

	if (bus->number == busnr)
		return;

	child = FUNC3(FUNC2(bus), busnr);
	FUNC0(!child);

	if (FUNC1(&child->devices))
		FUNC4(child);
}