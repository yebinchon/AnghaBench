#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int revision; } ;
struct TYPE_3__ {int throttle; int fdma; scalar_t__ bmisx; } ;
struct TYPE_4__ {TYPE_1__ piix4; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PCI_ANY_ID ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_82371AB ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_82371AB_0 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 TYPE_2__ errata ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev)
{
	u8 value1 = 0;
	u8 value2 = 0;


	if (!dev)
		return -EINVAL;

	/*
	 * Note that 'dev' references the PIIX4 ACPI Controller.
	 */

	switch (dev->revision) {
	case 0:
		FUNC0((ACPI_DB_INFO, "Found PIIX4 A-step\n"));
		break;
	case 1:
		FUNC0((ACPI_DB_INFO, "Found PIIX4 B-step\n"));
		break;
	case 2:
		FUNC0((ACPI_DB_INFO, "Found PIIX4E\n"));
		break;
	case 3:
		FUNC0((ACPI_DB_INFO, "Found PIIX4M\n"));
		break;
	default:
		FUNC0((ACPI_DB_INFO, "Found unknown PIIX4\n"));
		break;
	}

	switch (dev->revision) {

	case 0:		/* PIIX4 A-step */
	case 1:		/* PIIX4 B-step */
		/*
		 * See specification changes #13 ("Manual Throttle Duty Cycle")
		 * and #14 ("Enabling and Disabling Manual Throttle"), plus
		 * erratum #5 ("STPCLK# Deassertion Time") from the January
		 * 2002 PIIX4 specification update.  Applies to only older
		 * PIIX4 models.
		 */
		errata.piix4.throttle = 1;

	case 2:		/* PIIX4E */
	case 3:		/* PIIX4M */
		/*
		 * See erratum #18 ("C3 Power State/BMIDE and Type-F DMA
		 * Livelock") from the January 2002 PIIX4 specification update.
		 * Applies to all PIIX4 models.
		 */

		/*
		 * BM-IDE
		 * ------
		 * Find the PIIX4 IDE Controller and get the Bus Master IDE
		 * Status register address.  We'll use this later to read
		 * each IDE controller's DMA status to make sure we catch all
		 * DMA activity.
		 */
		dev = FUNC2(PCI_VENDOR_ID_INTEL,
				     PCI_DEVICE_ID_INTEL_82371AB,
				     PCI_ANY_ID, PCI_ANY_ID, NULL);
		if (dev) {
			errata.piix4.bmisx = FUNC4(dev, 4);
			FUNC1(dev);
		}

		/*
		 * Type-F DMA
		 * ----------
		 * Find the PIIX4 ISA Controller and read the Motherboard
		 * DMA controller's status to see if Type-F (Fast) DMA mode
		 * is enabled (bit 7) on either channel.  Note that we'll
		 * disable C3 support if this is enabled, as some legacy
		 * devices won't operate well if fast DMA is disabled.
		 */
		dev = FUNC2(PCI_VENDOR_ID_INTEL,
				     PCI_DEVICE_ID_INTEL_82371AB_0,
				     PCI_ANY_ID, PCI_ANY_ID, NULL);
		if (dev) {
			FUNC3(dev, 0x76, &value1);
			FUNC3(dev, 0x77, &value2);
			if ((value1 & 0x80) || (value2 & 0x80))
				errata.piix4.fdma = 1;
			FUNC1(dev);
		}

		break;
	}

	if (errata.piix4.bmisx)
		FUNC0((ACPI_DB_INFO,
				  "Bus master activity detection (BM-IDE) erratum enabled\n"));
	if (errata.piix4.fdma)
		FUNC0((ACPI_DB_INFO,
				  "Type-F DMA livelock erratum (C3 disabled)\n"));

	return 0;
}