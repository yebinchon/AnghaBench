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
struct pci_bus {int /*<<< orphan*/  dev; int /*<<< orphan*/  is_added; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct pci_bus *pci_bus)
{
	FUNC3(pci_bus);

	FUNC1(&pci_bus_sem);
	FUNC2(&pci_bus->node);
	FUNC5(&pci_bus_sem);
	if (!pci_bus->is_added)
		return;

	FUNC4(pci_bus);
	FUNC0(&pci_bus->dev);
}