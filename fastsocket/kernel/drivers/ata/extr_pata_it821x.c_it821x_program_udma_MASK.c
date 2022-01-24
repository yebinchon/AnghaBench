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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct it821x_dev {scalar_t__ clock_mode; scalar_t__ timing10; } ;
struct ata_port {int port_no; TYPE_1__* host; struct it821x_dev* private_data; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ATA_66 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap, struct ata_device *adev, u16 timing)
{
	struct it821x_dev *itdev = ap->private_data;
	struct pci_dev *pdev = FUNC1(ap->host->dev);
	int channel = ap->port_no;
	int unit = adev->devno;
	u8 conf;

	/* Program UDMA timing bits */
	if (itdev->clock_mode == ATA_66)
		conf = timing >> 8;
	else
		conf = timing & 0xFF;
	if (itdev->timing10 == 0)
		FUNC0(pdev, 0x56 + 4 * channel + unit, conf);
	else {
		/* Early revision must be programmed for both together */
		FUNC0(pdev, 0x56 + 4 * channel, conf);
		FUNC0(pdev, 0x56 + 4 * channel + 1, conf);
	}
}