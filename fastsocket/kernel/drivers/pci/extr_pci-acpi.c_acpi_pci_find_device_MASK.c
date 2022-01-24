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
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int acpi_integer ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, acpi_handle *handle)
{
	struct pci_dev * pci_dev;
	acpi_integer	addr;

	pci_dev = FUNC4(dev);
	/* Please ref to ACPI spec for the syntax of _ADR */
	addr = (FUNC2(pci_dev->devfn) << 16) | FUNC1(pci_dev->devfn);
	*handle = FUNC3(FUNC0(dev->parent), addr);
	if (!*handle)
		return -ENODEV;
	return 0;
}