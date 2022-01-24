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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_10__ {int host_flags; scalar_t__ channel; scalar_t__ hwif_data; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_11__ {int dn; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int IDE_HFLAG_MMIO ; 
 scalar_t__ FUNC0 (TYPE_2__*,int,int) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__) ; 
 unsigned long FUNC3 (TYPE_2__*,int) ; 
 unsigned long FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (struct pci_dev*,unsigned long) ; 
 scalar_t__ FUNC6 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,scalar_t__,scalar_t__) ; 
 struct pci_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(ide_drive_t *drive, u8 pio)
{
	static const u16 tf_speed[]   = { 0x328a, 0x2283, 0x1281, 0x10c3, 0x10c1 };
	static const u16 data_speed[] = { 0x328a, 0x2283, 0x1104, 0x10c3, 0x10c1 };

	ide_hwif_t *hwif	= drive->hwif;
	struct pci_dev *dev	= FUNC9(hwif->dev);
	ide_drive_t *pair	= FUNC1(drive);
	u32 speedt		= 0;
	u16 speedp		= 0;
	unsigned long addr	= FUNC3(drive, 0x04);
	unsigned long tfaddr	= FUNC4(hwif,	0x02);
	unsigned long base	= (unsigned long)hwif->hwif_data;
	u8 tf_pio		= pio;
	u8 mmio			= (hwif->host_flags & IDE_HFLAG_MMIO) ? 1 : 0;
	u8 addr_mask		= hwif->channel ? (mmio ? 0xF4 : 0x84)
						: (mmio ? 0xB4 : 0x80);
	u8 mode			= 0;
	u8 unit			= drive->dn & 1;

	/* trim *taskfile* PIO to the slowest of the master/slave */
	if (pair) {
		u8 pair_pio = FUNC0(pair, 255, 4);

		if (pair_pio < tf_pio)
			tf_pio = pair_pio;
	}

	/* cheat for now and use the docs */
	speedp = data_speed[pio];
	speedt = tf_speed[tf_pio];

	FUNC7(dev, speedp, addr);
	FUNC7(dev, speedt, tfaddr);

	/* now set up IORDY */
	speedp = FUNC5(dev, tfaddr - 2);
	speedp &= ~0x200;

	mode = FUNC6(dev, base + addr_mask);
	mode &= ~(unit ? 0x30 : 0x03);

	if (FUNC2(drive, pio)) {
		speedp |= 0x200;
		mode |= unit ? 0x10 : 0x01;
	}

	FUNC7(dev, speedp, tfaddr - 2);
	FUNC8(dev, mode, base + addr_mask);
}