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
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ pio_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ XFER_PIO_0 ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,struct ata_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ata_port *ap, struct ata_device *adev)
{
	struct pci_dev *pdev	= FUNC3(ap->host->dev);
	u8 ultra;

	FUNC0(ap, adev, adev->pio_mode - XFER_PIO_0);

	/* Clear the UDMA mode bits (set_dmamode will redo this if needed) */
	FUNC1(pdev, 0x44 + ap->port_no, &ultra);
	ultra &= ~(7 << (4  * adev->devno));	/* One nibble per drive */
	FUNC2(pdev, 0x44 + ap->port_no, ultra);
}