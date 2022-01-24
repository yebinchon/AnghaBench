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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int pio_mode; scalar_t__ devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAST ; 
 int /*<<< orphan*/  DTC ; 
 int /*<<< orphan*/  ETC ; 
 int IDE_CAST_CMD_MASK ; 
 int IDE_CAST_CMD_SHIFT ; 
 int IDE_CAST_D0_SHIFT ; 
 int IDE_CAST_D1_SHIFT ; 
 int IDE_CAST_DRV_MASK ; 
 int IDE_D0_SHIFT ; 
 int IDE_D1_SHIFT ; 
 int IDE_DRV_MASK ; 
 int IDE_ETC_NODMA ; 
 int XFER_PIO_0 ; 
 struct ata_device* FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap, struct ata_device *adev)
{
	static const u8 drv_timings[5] = {
		0x98, 0x55, 0x32, 0x21, 0x20,
	};

	static const u8 addr_timings[5] = {
		0x2, 0x1, 0x0, 0x0, 0x0,
	};

	static const u8 cmd_timings[5] = {
		0x99, 0x92, 0x90, 0x22, 0x20,
	};

	struct pci_dev *pdev = FUNC4(ap->host->dev);
	struct ata_device *pair = FUNC0(adev);
	int mode = adev->pio_mode - XFER_PIO_0;
	int cmdmode = mode;
	int dshift = adev->devno ? IDE_D1_SHIFT : IDE_D0_SHIFT;
	int cshift = adev->devno ? IDE_CAST_D1_SHIFT : IDE_CAST_D0_SHIFT;
	u32 dtc, cast, etc;

	if (pair)
		cmdmode = FUNC3(mode, pair->pio_mode - XFER_PIO_0);

	FUNC1(pdev, DTC, &dtc);
	FUNC1(pdev, CAST, &cast);
	FUNC1(pdev, ETC, &etc);

	dtc &= ~(IDE_DRV_MASK << dshift);
	dtc |= drv_timings[mode] << dshift;

	cast &= ~(IDE_CAST_DRV_MASK << cshift);
	cast |= addr_timings[mode] << cshift;

	cast &= ~(IDE_CAST_CMD_MASK << IDE_CAST_CMD_SHIFT);
	cast |= cmd_timings[cmdmode] << IDE_CAST_CMD_SHIFT;

	etc &= ~(IDE_DRV_MASK << dshift);
	etc |= IDE_ETC_NODMA << dshift;

	FUNC2(pdev, DTC, dtc);
	FUNC2(pdev, CAST, cast);
	FUNC2(pdev, ETC, etc);
}