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
typedef  int u8 ;
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BASE ; 
 int ENODEV ; 
 scalar_t__ PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_SI ; 
 int /*<<< orphan*/  SIS5595_ENABLE_REG ; 
 int SIS5595_EXTENT ; 
 int SMB_INDEX ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int* blacklist ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int force_addr ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int /*<<< orphan*/ ) ; 
 int sis5595_base ; 
 TYPE_1__ sis5595_driver ; 

__attribute__((used)) static int FUNC12(struct pci_dev *SIS5595_dev)
{
	u16 a;
	u8 val;
	int *i;
	int retval = -ENODEV;

	/* Look for imposters */
	for (i = blacklist; *i != 0; i++) {
		struct pci_dev *dev;
		dev = FUNC5(PCI_VENDOR_ID_SI, *i, NULL);
		if (dev) {
			FUNC2(&SIS5595_dev->dev, "Looked for SIS5595 but found unsupported device %.4x\n", *i);
			FUNC4(dev);
			return -ENODEV;
		}
	}

	/* Determine the address of the SMBus areas */
	FUNC7(SIS5595_dev, ACPI_BASE, &sis5595_base);
	if (sis5595_base == 0 && force_addr == 0) {
		FUNC2(&SIS5595_dev->dev, "ACPI base address uninitialized - upgrade BIOS or use force_addr=0xaddr\n");
		return -ENODEV;
	}

	if (force_addr)
		sis5595_base = force_addr & ~(SIS5595_EXTENT - 1);
	FUNC1(&SIS5595_dev->dev, "ACPI Base address: %04x\n", sis5595_base);

	/* NB: We grab just the two SMBus registers here, but this may still
	 * interfere with ACPI :-(  */
	retval = FUNC0(sis5595_base + SMB_INDEX, 2,
				   sis5595_driver.name);
	if (retval)
		return retval;

	if (!FUNC11(sis5595_base + SMB_INDEX, 2,
			    sis5595_driver.name)) {
		FUNC2(&SIS5595_dev->dev, "SMBus registers 0x%04x-0x%04x already in use!\n",
			sis5595_base + SMB_INDEX, sis5595_base + SMB_INDEX + 1);
		return -ENODEV;
	}

	if (force_addr) {
		FUNC3(&SIS5595_dev->dev, "forcing ISA address 0x%04X\n", sis5595_base);
		if (FUNC9(SIS5595_dev, ACPI_BASE, sis5595_base)
		    != PCIBIOS_SUCCESSFUL)
			goto error;
		if (FUNC7(SIS5595_dev, ACPI_BASE, &a)
		    != PCIBIOS_SUCCESSFUL)
			goto error;
		if ((a & ~(SIS5595_EXTENT - 1)) != sis5595_base) {
			/* doesn't work for some chips! */
			FUNC2(&SIS5595_dev->dev, "force address failed - not supported?\n");
			goto error;
		}
	}

	if (FUNC6(SIS5595_dev, SIS5595_ENABLE_REG, &val)
	    != PCIBIOS_SUCCESSFUL)
		goto error;
	if ((val & 0x80) == 0) {
		FUNC3(&SIS5595_dev->dev, "enabling ACPI\n");
		if (FUNC8(SIS5595_dev, SIS5595_ENABLE_REG, val | 0x80)
		    != PCIBIOS_SUCCESSFUL)
			goto error;
		if (FUNC6(SIS5595_dev, SIS5595_ENABLE_REG, &val)
		    != PCIBIOS_SUCCESSFUL)
			goto error;
		if ((val & 0x80) == 0) {
			/* doesn't work for some chips? */
			FUNC2(&SIS5595_dev->dev, "ACPI enable failed - not supported?\n");
			goto error;
		}
	}

	/* Everything is happy */
	return 0;

error:
	FUNC10(sis5595_base + SMB_INDEX, 2);
	return retval;
}