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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  pin; } ;
struct acpi_prt_entry {int index; scalar_t__ link; } ;

/* Variables and functions */
 struct acpi_prt_entry* FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct pci_dev *dev)
{
	struct acpi_prt_entry *entry;
	int gsi;
	u8 pin;

	pin = dev->pin;
	if (!pin)
		return;

	entry = FUNC0(dev, pin);
	if (!entry)
		return;

	if (entry->link)
		gsi = FUNC1(entry->link);
	else
		gsi = entry->index;

	/*
	 * TBD: It might be worth clearing dev->irq by magic constant
	 * (e.g. PCI_UNDEFINED_IRQ).
	 */

	FUNC3(&dev->dev, "PCI INT %c disabled\n", FUNC4(pin));
	FUNC2(gsi);
}