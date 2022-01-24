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
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int pio_mode; int devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int XFER_PIO_0 ; 
 struct ata_device* FUNC0 (struct ata_device*) ; 
 scalar_t__ FUNC1 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,unsigned long,int) ; 
 unsigned long FUNC6 (struct ata_port*,struct ata_device*,int) ; 
 unsigned long FUNC7 (struct ata_port*,int) ; 
 struct pci_dev* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ata_port *ap, struct ata_device *adev)
{
	static u16 speed_p[5] = { 0x328A, 0x2283, 0x1104, 0x10C3, 0x10C1 };
	static u16 speed_t[5] = { 0x328A, 0x2283, 0x1281, 0x10C3, 0x10C1 };

	unsigned long tfaddr = FUNC7(ap, 0x02);
	unsigned long addr = FUNC6(ap, adev, 0x04);
	unsigned long addr_mask = 0x80 + 4 * ap->port_no;
	struct pci_dev *pdev = FUNC8(ap->host->dev);
	int pio = adev->pio_mode - XFER_PIO_0;
	int lowest_pio = pio;
	int port_shift = 4 * adev->devno;
	u16 reg;
	u8 mode;

	struct ata_device *pair = FUNC0(adev);

	if (pair != NULL && adev->pio_mode > pair->pio_mode)
		lowest_pio = pair->pio_mode - XFER_PIO_0;

	FUNC5(pdev, addr, speed_p[pio]);
	FUNC5(pdev, tfaddr, speed_t[lowest_pio]);

	FUNC3(pdev, tfaddr-2, &reg);
	FUNC2(pdev, addr_mask, &mode);

	reg &= ~0x0200;			/* Clear IORDY */
	mode &= ~(3 << port_shift);	/* Clear IORDY and DMA bits */

	if (FUNC1(adev)) {
		reg |= 0x0200;		/* Enable IORDY */
		mode |= 1 << port_shift;
	}
	FUNC5(pdev, tfaddr-2, reg);
	FUNC4(pdev, addr_mask, mode);
}