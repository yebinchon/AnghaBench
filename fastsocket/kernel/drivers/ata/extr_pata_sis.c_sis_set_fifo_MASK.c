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
struct ata_device {int devno; scalar_t__ class; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ATA ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ata_port *ap, struct ata_device *adev)
{
	struct pci_dev *pdev = FUNC2(ap->host->dev);
	u8 fifoctrl;
	u8 mask = 0x11;

	mask <<= (2 * ap->port_no);
	mask <<= adev->devno;

	/* This holds various bits including the FIFO control */
	FUNC0(pdev, 0x4B, &fifoctrl);
	fifoctrl &= ~mask;

	/* Enable for ATA (disk) only */
	if (adev->class == ATA_DEV_ATA)
		fifoctrl |= mask;
	FUNC1(pdev, 0x4B, fifoctrl);
}