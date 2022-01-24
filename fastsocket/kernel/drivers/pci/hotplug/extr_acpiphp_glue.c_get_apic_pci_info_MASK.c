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
struct pci_dev {scalar_t__ class; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ PCI_CLASS_SYSTEM_PIC_IOAPIC ; 
 scalar_t__ PCI_CLASS_SYSTEM_PIC_IOXAPIC ; 
 struct pci_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static struct pci_dev * FUNC2(acpi_handle handle)
{
	struct pci_dev *dev;

	dev = FUNC0(handle);
	if (!dev)
		return NULL;

	if ((dev->class != PCI_CLASS_SYSTEM_PIC_IOAPIC) &&
	    (dev->class != PCI_CLASS_SYSTEM_PIC_IOXAPIC))
	{
		FUNC1(dev);
		return NULL;
	}

	return dev;
}