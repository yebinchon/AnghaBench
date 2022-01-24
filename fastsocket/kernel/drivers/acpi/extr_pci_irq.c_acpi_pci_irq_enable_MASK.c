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
struct pci_dev {int class; int irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  pin; } ;
struct acpi_prt_entry {int index; scalar_t__ link; } ;
typedef  int /*<<< orphan*/  link_desc ;

/* Variables and functions */
 int ACPI_ACTIVE_LOW ; 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_LEVEL_SENSITIVE ; 
 int PCI_CLASS_STORAGE_IDE ; 
 struct acpi_prt_entry* FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int,int*,int*,char**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 

int FUNC10(struct pci_dev *dev)
{
	struct acpi_prt_entry *entry;
	int gsi;
	u8 pin;
	int triggering = ACPI_LEVEL_SENSITIVE;
	int polarity = ACPI_ACTIVE_LOW;
	char *link = NULL;
	char link_desc[16];
	int rc;

	pin = dev->pin;
	if (!pin) {
		FUNC0((ACPI_DB_INFO,
				  "No interrupt pin configured for device %s\n",
				  FUNC6(dev)));
		return 0;
	}

	entry = FUNC1(dev, pin);
	if (!entry) {
		/*
		 * IDE legacy mode controller IRQs are magic. Why do compat
		 * extensions always make such a nasty mess.
		 */
		if (dev->class >> 8 == PCI_CLASS_STORAGE_IDE &&
				(dev->class & 0x05) == 0)
			return 0;
	}

	if (entry) {
		if (entry->link)
			gsi = FUNC2(entry->link,
							 entry->index,
							 &triggering, &polarity,
							 &link);
		else
			gsi = entry->index;
	} else
		gsi = -1;

	/*
	 * No IRQ known to the ACPI subsystem - maybe the BIOS / 
	 * driver reported one, then use it. Exit in any case.
	 */
	if (gsi < 0) {
		FUNC5(&dev->dev, "PCI INT %c: no GSI", FUNC7(pin));
		/* Interrupt Line values above 0xF are forbidden */
		if (dev->irq > 0 && (dev->irq <= 0xF)) {
			FUNC8(" - using IRQ %d\n", dev->irq);
			FUNC3(&dev->dev, dev->irq,
					  ACPI_LEVEL_SENSITIVE,
					  ACPI_ACTIVE_LOW);
			return 0;
		} else {
			FUNC8("\n");
			return 0;
		}
	}

	rc = FUNC3(&dev->dev, gsi, triggering, polarity);
	if (rc < 0) {
		FUNC5(&dev->dev, "PCI INT %c: failed to register GSI\n",
			 FUNC7(pin));
		return rc;
	}
	dev->irq = rc;

	if (link)
		FUNC9(link_desc, sizeof(link_desc), " -> Link[%s]", link);
	else
		link_desc[0] = '\0';

	FUNC4(&dev->dev, "PCI INT %c%s -> GSI %u (%s, %s) -> IRQ %d\n",
		 FUNC7(pin), link_desc, gsi,
		 (triggering == ACPI_LEVEL_SENSITIVE) ? "level" : "edge",
		 (polarity == ACPI_ACTIVE_LOW) ? "low" : "high", dev->irq);

	return 0;
}