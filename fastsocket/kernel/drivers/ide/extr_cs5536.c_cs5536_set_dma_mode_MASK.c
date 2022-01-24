#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_7__ {int dn; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETC ; 
 int IDE_D0_SHIFT ; 
 int IDE_D1_SHIFT ; 
 int IDE_DRV_MASK ; 
 int IDE_ETC_UDMA_MASK ; 
 int const XFER_MW_DMA_0 ; 
 int const XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(ide_drive_t *drive, const u8 mode)
{
	static const u8 udma_timings[6] = {
		0xc2, 0xc1, 0xc0, 0xc4, 0xc5, 0xc6,
	};

	static const u8 mwdma_timings[3] = {
		0x67, 0x21, 0x20,
	};

	struct pci_dev *pdev = FUNC4(drive->hwif->dev);
	int dshift = (drive->dn & 1) ? IDE_D1_SHIFT : IDE_D0_SHIFT;
	unsigned long timings = (unsigned long)FUNC2(drive);
	u32 etc;

	FUNC0(pdev, ETC, &etc);

	if (mode >= XFER_UDMA_0) {
		etc &= ~(IDE_DRV_MASK << dshift);
		etc |= udma_timings[mode - XFER_UDMA_0] << dshift;
	} else { /* MWDMA */
		etc &= ~(IDE_ETC_UDMA_MASK << dshift);
		timings &= IDE_DRV_MASK;
		timings |= mwdma_timings[mode - XFER_MW_DMA_0] << 8;
		FUNC3(drive, (void *)timings);
	}

	FUNC1(pdev, ETC, etc);
}