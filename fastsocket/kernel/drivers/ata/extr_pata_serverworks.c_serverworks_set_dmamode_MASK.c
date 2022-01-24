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
 size_t XFER_MW_DMA_0 ; 
 scalar_t__ XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int const) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ata_port *ap, struct ata_device *adev)
{
	static const u8 dma_mode[] = { 0x77, 0x21, 0x20 };
	int offset = 1 + 2 * ap->port_no - adev->devno;
	int devbits = 2 * ap->port_no + adev->devno;
	u8 ultra;
	u8 ultra_cfg;
	struct pci_dev *pdev = FUNC2(ap->host->dev);

	FUNC0(pdev, 0x54, &ultra_cfg);
	FUNC0(pdev, 0x56 + ap->port_no, &ultra);
	ultra &= ~(0x0F << (adev->devno * 4));

	if (adev->dma_mode >= XFER_UDMA_0) {
		FUNC1(pdev, 0x44 + offset,  0x20);

		ultra |= (adev->dma_mode - XFER_UDMA_0)
					<< (adev->devno * 4);
		ultra_cfg |=  (1 << devbits);
	} else {
		FUNC1(pdev, 0x44 + offset,
			dma_mode[adev->dma_mode - XFER_MW_DMA_0]);
		ultra_cfg &= ~(1 << devbits);
	}
	FUNC1(pdev, 0x56 + ap->port_no, ultra);
	FUNC1(pdev, 0x54, ultra_cfg);
}