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
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ dma_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BMIDESR0 ; 
 int UDIDETCR0 ; 
 scalar_t__ XFER_UDMA_0 ; 
 scalar_t__ XFER_UDMA_2 ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,struct ata_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ata_port *ap, struct ata_device *adev)
{
	static const u8 udma_data[] = {
		0x30, 0x20, 0x10, 0x20, 0x10, 0x00
	};

	struct pci_dev *pdev = FUNC3(ap->host->dev);
	u8 regU, regD;

	int pciU = UDIDETCR0 + 8 * ap->port_no;
	int pciD = BMIDESR0 + 8 * ap->port_no;
	int shift = 2 * adev->devno;

	FUNC1(pdev, pciD, &regD);
	FUNC1(pdev, pciU, &regU);

	/* DMA bits off */
	regD &= ~(0x20 << adev->devno);
	/* DMA control bits */
	regU &= ~(0x30 << shift);
	/* DMA timing bits */
	regU &= ~(0x05 << adev->devno);

	if (adev->dma_mode >= XFER_UDMA_0) {
		/* Merge the timing value */
		regU |= udma_data[adev->dma_mode - XFER_UDMA_0] << shift;
		/* Merge the control bits */
		regU |= 1 << adev->devno; /* UDMA on */
		if (adev->dma_mode > XFER_UDMA_2) /* 15nS timing */
			regU |= 4 << adev->devno;
	} else {
		regU &= ~ (1 << adev->devno);	/* UDMA off */
		FUNC0(ap, adev, adev->dma_mode);
	}

	regD |= 0x20 << adev->devno;

	FUNC2(pdev, pciU, regU);
	FUNC2(pdev, pciD, regD);
}