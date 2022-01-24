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
struct hpt_clock {int xfer_mode; int timing; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct hpt_clock* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int XFER_MW_DMA_0 ; 
 int XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ata_port *ap, struct ata_device *adev,
			    u8 mode)
{
	struct hpt_clock *clocks = ap->host->private_data;
	struct pci_dev *pdev = FUNC5(ap->host->dev);
	u32 addr1 = 0x40 + 4 * (adev->devno + 2 * ap->port_no);
	u32 addr2 = 0x51 + 4 * ap->port_no;
	u32 mask, reg;
	u8 fast;

	/* Fast interrupt prediction disable, hold off interrupt disable */
	FUNC1(pdev, addr2, &fast);
	if (fast & 0x80) {
		fast &= ~0x80;
		FUNC3(pdev, addr2, fast);
	}

	/* determine timing mask and find matching clock entry */
	if (mode < XFER_MW_DMA_0)
		mask = 0xc1f8ffff;
	else if (mode < XFER_UDMA_0)
		mask = 0x303800ff;
	else
		mask = 0x30070000;

	while (clocks->xfer_mode) {
		if (clocks->xfer_mode == mode)
			break;
		clocks++;
	}
	if (!clocks->xfer_mode)
		FUNC0();

	/*
	 * Combine new mode bits with old config bits and disable
	 * on-chip PIO FIFO/buffer (and PIO MST mode as well) to avoid
	 * problems handling I/O errors later.
	 */
	FUNC2(pdev, addr1, &reg);
	reg = ((reg & ~mask) | (clocks->timing & mask)) & ~0xc0000000;
	FUNC4(pdev, addr1, reg);
}