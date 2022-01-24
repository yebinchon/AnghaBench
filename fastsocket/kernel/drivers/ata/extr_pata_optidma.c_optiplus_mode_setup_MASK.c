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
typedef  scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; int /*<<< orphan*/  dma_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,struct ata_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,scalar_t__) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ata_port *ap, struct ata_device *adev, u8 mode)
{
	struct pci_dev *pdev = FUNC3(ap->host->dev);
	u8 udcfg;
	u8 udslave;
	int dev2 = 2 * adev->devno;
	int unit = 2 * ap->port_no + adev->devno;
	int udma = mode - XFER_UDMA_0;

	FUNC1(pdev, 0x44, &udcfg);
	if (mode <= XFER_UDMA_0) {
		udcfg &= ~(1 << unit);
		FUNC0(ap, adev, adev->dma_mode);
	} else {
		udcfg |=  (1 << unit);
		if (ap->port_no) {
			FUNC1(pdev, 0x45, &udslave);
			udslave &= ~(0x03 << dev2);
			udslave |= (udma << dev2);
			FUNC2(pdev, 0x45, udslave);
		} else {
			udcfg &= ~(0x30 << dev2);
			udcfg |= (udma << dev2);
		}
	}
	FUNC2(pdev, 0x44, udcfg);
}