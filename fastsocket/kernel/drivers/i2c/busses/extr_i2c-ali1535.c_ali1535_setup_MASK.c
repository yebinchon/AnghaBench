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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned char ALI1535_SMBIO_EN ; 
 int ALI1535_SMB_IOSIZE ; 
 int ENODEV ; 
 int /*<<< orphan*/  SMBBA ; 
 int /*<<< orphan*/  SMBCFG ; 
 int /*<<< orphan*/  SMBCLK ; 
 int /*<<< orphan*/  SMBHSTCFG ; 
 int /*<<< orphan*/  SMBREV ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ ali1535_driver ; 
 int ali1535_smba ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *dev)
{
	int retval = -ENODEV;
	unsigned char temp;

	/* Check the following things:
		- SMB I/O address is initialized
		- Device is enabled
		- We can use the addresses
	*/

	/* Determine the address of the SMBus area */
	FUNC5(dev, SMBBA, &ali1535_smba);
	ali1535_smba &= (0xffff & ~(ALI1535_SMB_IOSIZE - 1));
	if (ali1535_smba == 0) {
		FUNC3(&dev->dev,
			"ALI1535_smb region uninitialized - upgrade BIOS?\n");
		goto exit;
	}

	retval = FUNC0(ali1535_smba, ALI1535_SMB_IOSIZE,
				   ali1535_driver.name);
	if (retval)
		goto exit;

	if (!FUNC8(ali1535_smba, ALI1535_SMB_IOSIZE,
			    ali1535_driver.name)) {
		FUNC2(&dev->dev, "ALI1535_smb region 0x%x already in use!\n",
			ali1535_smba);
		goto exit;
	}

	/* check if whole device is enabled */
	FUNC4(dev, SMBCFG, &temp);
	if ((temp & ALI1535_SMBIO_EN) == 0) {
		FUNC2(&dev->dev, "SMB device not enabled - upgrade BIOS?\n");
		goto exit_free;
	}

	/* Is SMB Host controller enabled? */
	FUNC4(dev, SMBHSTCFG, &temp);
	if ((temp & 1) == 0) {
		FUNC2(&dev->dev, "SMBus controller not enabled - upgrade BIOS?\n");
		goto exit_free;
	}

	/* set SMB clock to 74KHz as recommended in data sheet */
	FUNC6(dev, SMBCLK, 0x20);

	/*
	  The interrupt routing for SMB is set up in register 0x77 in the
	  1533 ISA Bridge device, NOT in the 7101 device.
	  Don't bother with finding the 1533 device and reading the register.
	if ((....... & 0x0F) == 1)
		dev_dbg(&dev->dev, "ALI1535 using Interrupt 9 for SMBus.\n");
	*/
	FUNC4(dev, SMBREV, &temp);
	FUNC1(&dev->dev, "SMBREV = 0x%X\n", temp);
	FUNC1(&dev->dev, "ALI1535_smba = 0x%X\n", ali1535_smba);

	retval = 0;
exit:
	return retval;

exit_free:
	FUNC7(ali1535_smba, ALI1535_SMB_IOSIZE);
	return retval;
}