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
struct pci_dev {struct pci_bus* bus; } ;
struct pci_bus {struct pci_bus* parent; } ;
struct hotplug_params {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/ * acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct hotplug_params*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct hotplug_params*) ; 

int FUNC7(struct pci_dev *dev, struct hotplug_params *hpp)
{
	acpi_status status;
	acpi_handle handle, phandle;
	struct pci_bus *pbus;

	handle = NULL;
	for (pbus = dev->bus; pbus; pbus = pbus->parent) {
		handle = FUNC4(pbus);
		if (handle)
			break;
	}

	/*
	 * _HPP settings apply to all child buses, until another _HPP is
	 * encountered. If we don't find an _HPP for the input pci dev,
	 * look for it in the parent device scope since that would apply to
	 * this pci dev.
	 */
	while (handle) {
		status = FUNC6(handle, hpp);
		if (FUNC1(status))
			return 0;
		status = FUNC5(handle, hpp);
		if (FUNC1(status))
			return 0;
		if (FUNC3(handle))
			break;
		status = FUNC2(handle, &phandle);
		if (FUNC0(status))
			break;
		handle = phandle;
	}
	return -ENODEV;
}