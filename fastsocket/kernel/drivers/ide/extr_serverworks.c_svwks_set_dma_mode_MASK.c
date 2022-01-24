#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int channel; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dn; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int const XFER_MW_DMA_0 ; 
 int const XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int const,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(ide_drive_t *drive, const u8 speed)
{
	static const u8 udma_modes[]		= { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05 };
	static const u8 dma_modes[]		= { 0x77, 0x21, 0x20 };
	static const u8 drive_pci2[]		= { 0x45, 0x44, 0x47, 0x46 };

	ide_hwif_t *hwif	= drive->hwif;
	struct pci_dev *dev	= FUNC2(hwif->dev);
	u8 unit			= drive->dn & 1;

	u8 ultra_enable	 = 0, ultra_timing = 0, dma_timing = 0;

	FUNC0(dev, (0x56|hwif->channel), &ultra_timing);
	FUNC0(dev, 0x54, &ultra_enable);

	ultra_timing	&= ~(0x0F << (4*unit));
	ultra_enable	&= ~(0x01 << drive->dn);

	if (speed >= XFER_UDMA_0) {
		dma_timing   |= dma_modes[2];
		ultra_timing |= (udma_modes[speed - XFER_UDMA_0] << (4 * unit));
		ultra_enable |= (0x01 << drive->dn);
	} else if (speed >= XFER_MW_DMA_0)
		dma_timing   |= dma_modes[speed - XFER_MW_DMA_0];

	FUNC1(dev, drive_pci2[drive->dn], dma_timing);
	FUNC1(dev, (0x56|hwif->channel), ultra_timing);
	FUNC1(dev, 0x54, ultra_enable);
}