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
struct pci_dev {int dummy; } ;
struct ata_timing {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {scalar_t__ class; scalar_t__ dma_mode; scalar_t__ pio_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ATA ; 
 int ATA_TIMING_8BIT ; 
 int ATA_TIMING_SETUP ; 
 scalar_t__ XFER_UDMA_0 ; 
 scalar_t__ XFER_UDMA_3 ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,struct ata_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,struct ata_device*,struct ata_timing*,int) ; 
 struct ata_device* FUNC2 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_device*,scalar_t__,struct ata_timing*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_timing*,struct ata_timing*,struct ata_timing*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ata_port *ap, struct ata_device *adev)
{
	static u8 udma_timing[7] = { 0xC, 0xB, 0xA, 0x9, 0x8, 0xF, 0xD };
	struct ata_device *pair = FUNC2(adev);
	struct ata_timing t;
	unsigned long T =  1000000000 / 33333;	/* PCI clock based */
	struct pci_dev *pdev = FUNC7(ap->host->dev);


	if (adev->class == ATA_DEV_ATA)
		FUNC0(ap, adev, 0x08);

	if (adev->dma_mode >= XFER_UDMA_0) {
		FUNC1(ap, adev, NULL, udma_timing[adev->dma_mode - XFER_UDMA_0]);
		if (adev->dma_mode >= XFER_UDMA_3) {
			u8 reg4b;
			FUNC5(pdev, 0x4B, &reg4b);
			reg4b |= 1;
			FUNC6(pdev, 0x4B, reg4b);
		}
	} else {
		FUNC3(adev, adev->dma_mode, &t, T, 1);
		if (pair) {
			struct ata_timing p;
			FUNC3(pair, pair->pio_mode, &p, T, 1);
			FUNC4(&p, &t, &t, ATA_TIMING_SETUP|ATA_TIMING_8BIT);
			if (pair->dma_mode) {
				FUNC3(pair, pair->dma_mode, &p, T, 1);
				FUNC4(&p, &t, &t, ATA_TIMING_SETUP|ATA_TIMING_8BIT);
			}
		}
		FUNC1(ap, adev, &t, 0);
	}
}