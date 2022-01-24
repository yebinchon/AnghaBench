#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_11__ {int dn; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAST ; 
 int IDE_CAST_CMD_MASK ; 
 int IDE_CAST_CMD_SHIFT ; 
 int IDE_CAST_D0_SHIFT ; 
 int IDE_CAST_D1_SHIFT ; 
 int IDE_CAST_DRV_MASK ; 
 int IDE_DRV_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,void*) ; 
 int FUNC7 (int const,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(ide_drive_t *drive, const u8 pio)
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

	struct pci_dev *pdev = FUNC8(drive->hwif->dev);
	ide_drive_t *pair = FUNC5(drive);
	int cshift = (drive->dn & 1) ? IDE_CAST_D1_SHIFT : IDE_CAST_D0_SHIFT;
	unsigned long timings = (unsigned long)FUNC4(drive);
	u32 cast;
	u8 cmd_pio = pio;

	if (pair)
		cmd_pio = FUNC7(pio, FUNC3(pair, 255, 4));

	timings &= (IDE_DRV_MASK << 8);
	timings |= drv_timings[pio];
	FUNC6(drive, (void *)timings);

	FUNC0(drive, drv_timings[pio]);

	FUNC1(pdev, CAST, &cast);

	cast &= ~(IDE_CAST_DRV_MASK << cshift);
	cast |= addr_timings[pio] << cshift;

	cast &= ~(IDE_CAST_CMD_MASK << IDE_CAST_CMD_SHIFT);
	cast |= cmd_timings[cmd_pio] << IDE_CAST_CMD_SHIFT;

	FUNC2(pdev, CAST, cast);
}