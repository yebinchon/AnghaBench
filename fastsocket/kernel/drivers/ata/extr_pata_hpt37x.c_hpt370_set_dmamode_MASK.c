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
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ dma_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ XFER_UDMA_0 ; 
 int FUNC0 (struct ata_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ata_port *ap, struct ata_device *adev)
{
	struct pci_dev *pdev = FUNC5(ap->host->dev);
	u32 addr1, addr2;
	u32 reg, mode, mask;
	u8 fast;

	addr1 = 0x40 + 4 * (adev->devno + 2 * ap->port_no);
	addr2 = 0x51 + 4 * ap->port_no;

	/* Fast interrupt prediction disable, hold off interrupt disable */
	FUNC1(pdev, addr2, &fast);
	fast &= ~0x02;
	fast |= 0x01;
	FUNC3(pdev, addr2, fast);

	mask = adev->dma_mode < XFER_UDMA_0 ? 0x31C001FF : 0x303C0000;

	FUNC2(pdev, addr1, &reg);
	mode = FUNC0(ap, adev->dma_mode);
	mode &= mask;
	reg &= ~mask;
	FUNC4(pdev, addr1, reg | mode);
}