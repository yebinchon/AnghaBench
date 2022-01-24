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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned char ALI15X3_LOCK ; 
 int ALI15X3_SMB_IOSIZE ; 
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  SMBATPC ; 
 int /*<<< orphan*/  SMBBA ; 
 int /*<<< orphan*/  SMBCLK ; 
 int /*<<< orphan*/  SMBCOM ; 
 int /*<<< orphan*/  SMBHSTCFG ; 
 int /*<<< orphan*/  SMBREV ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ ali15x3_driver ; 
 int ali15x3_smba ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int force_addr ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *ALI15X3_dev)
{
	u16 a;
	unsigned char temp;

	/* Check the following things:
		- SMB I/O address is initialized
		- Device is enabled
		- We can use the addresses
	*/

	/* Unlock the register.
	   The data sheet says that the address registers are read-only
	   if the lock bits are 1, but in fact the address registers
	   are zero unless you clear the lock bits.
	*/
	FUNC4(ALI15X3_dev, SMBATPC, &temp);
	if (temp & ALI15X3_LOCK) {
		temp &= ~ALI15X3_LOCK;
		FUNC6(ALI15X3_dev, SMBATPC, temp);
	}

	/* Determine the address of the SMBus area */
	FUNC5(ALI15X3_dev, SMBBA, &ali15x3_smba);
	ali15x3_smba &= (0xffff & ~(ALI15X3_SMB_IOSIZE - 1));
	if (ali15x3_smba == 0 && force_addr == 0) {
		FUNC2(&ALI15X3_dev->dev, "ALI15X3_smb region uninitialized "
			"- upgrade BIOS or use force_addr=0xaddr\n");
		return -ENODEV;
	}

	if(force_addr)
		ali15x3_smba = force_addr & ~(ALI15X3_SMB_IOSIZE - 1);

	if (FUNC0(ali15x3_smba, ALI15X3_SMB_IOSIZE,
			      ali15x3_driver.name))
		return -EBUSY;

	if (!FUNC9(ali15x3_smba, ALI15X3_SMB_IOSIZE,
			    ali15x3_driver.name)) {
		FUNC2(&ALI15X3_dev->dev,
			"ALI15X3_smb region 0x%x already in use!\n",
			ali15x3_smba);
		return -ENODEV;
	}

	if(force_addr) {
		FUNC3(&ALI15X3_dev->dev, "forcing ISA address 0x%04X\n",
			ali15x3_smba);
		if (PCIBIOS_SUCCESSFUL != FUNC7(ALI15X3_dev,
								SMBBA,
								ali15x3_smba))
			goto error;
		if (PCIBIOS_SUCCESSFUL != FUNC5(ALI15X3_dev,
								SMBBA, &a))
			goto error;
		if ((a & ~(ALI15X3_SMB_IOSIZE - 1)) != ali15x3_smba) {
			/* make sure it works */
			FUNC2(&ALI15X3_dev->dev,
				"force address failed - not supported?\n");
			goto error;
		}
	}
	/* check if whole device is enabled */
	FUNC4(ALI15X3_dev, SMBCOM, &temp);
	if ((temp & 1) == 0) {
		FUNC3(&ALI15X3_dev->dev, "enabling SMBus device\n");
		FUNC6(ALI15X3_dev, SMBCOM, temp | 0x01);
	}

	/* Is SMB Host controller enabled? */
	FUNC4(ALI15X3_dev, SMBHSTCFG, &temp);
	if ((temp & 1) == 0) {
		FUNC3(&ALI15X3_dev->dev, "enabling SMBus controller\n");
		FUNC6(ALI15X3_dev, SMBHSTCFG, temp | 0x01);
	}

	/* set SMB clock to 74KHz as recommended in data sheet */
	FUNC6(ALI15X3_dev, SMBCLK, 0x20);

	/*
	  The interrupt routing for SMB is set up in register 0x77 in the
	  1533 ISA Bridge device, NOT in the 7101 device.
	  Don't bother with finding the 1533 device and reading the register.
	if ((....... & 0x0F) == 1)
		dev_dbg(&ALI15X3_dev->dev, "ALI15X3 using Interrupt 9 for SMBus.\n");
	*/
	FUNC4(ALI15X3_dev, SMBREV, &temp);
	FUNC1(&ALI15X3_dev->dev, "SMBREV = 0x%X\n", temp);
	FUNC1(&ALI15X3_dev->dev, "iALI15X3_smba = 0x%X\n", ali15x3_smba);

	return 0;
error:
	FUNC8(ali15x3_smba, ALI15X3_SMB_IOSIZE);
	return -ENODEV;
}