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
struct pci_dev {struct pci_bus* bus; struct pci_bus* subordinate; int /*<<< orphan*/  devfn; } ;
struct pci_bus {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {int (* bind ) (struct acpi_device*) ;int /*<<< orphan*/  unbind; } ;
struct acpi_device {int /*<<< orphan*/  handle; TYPE_1__ ops; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  METHOD_NAME__PRT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pci_bus*) ; 
 int /*<<< orphan*/  acpi_pci_unbind ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_bus*) ; 

__attribute__((used)) static int FUNC9(struct acpi_device *device)
{
	acpi_status status;
	acpi_handle handle;
	struct pci_bus *bus;
	struct pci_dev *dev;

	dev = FUNC5(device->handle);
	if (!dev)
		return 0;

	/*
	 * Install the 'bind' function to facilitate callbacks for
	 * children of the P2P bridge.
	 */
	if (dev->subordinate) {
		FUNC0((ACPI_DB_INFO,
				  "Device %04x:%02x:%02x.%d is a PCI bridge\n",
				  FUNC8(dev->bus), dev->bus->number,
				  FUNC3(dev->devfn), FUNC2(dev->devfn)));
		device->ops.bind = acpi_pci_bind;
		device->ops.unbind = acpi_pci_unbind;
	}

	/*
	 * Evaluate and parse _PRT, if exists.  This code allows parsing of
	 * _PRT objects within the scope of non-bridge devices.  Note that
	 * _PRTs within the scope of a PCI bridge assume the bridge's
	 * subordinate bus number.
	 *
	 * TBD: Can _PRTs exist within the scope of non-bridge PCI devices?
	 */
	status = FUNC4(device->handle, METHOD_NAME__PRT, &handle);
	if (FUNC1(status))
		goto out;

	if (dev->subordinate)
		bus = dev->subordinate;
	else
		bus = dev->bus;

	FUNC6(device->handle, bus);

out:
	FUNC7(dev);
	return 0;
}