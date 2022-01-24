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
struct ata_timing {int /*<<< orphan*/  recover; int /*<<< orphan*/  active; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; int /*<<< orphan*/  pio_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int XFER_MW_DMA_0 ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,int /*<<< orphan*/ ,struct ata_timing*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct ata_port *ap, struct ata_device *adev, u8 mode)
{
	struct pci_dev *dev	= FUNC6(ap->host->dev);
	int unit		= 2 * ap->port_no + adev->devno;
	int timing		= 0x44 + 2 * unit;
	unsigned long T		= 1000000000 / 33333;	/* PCI clocks */
	struct ata_timing t;
	u16 clocking;
	u8 iordy;
	u8 status;

	/* Timing register format is 17 - low nybble read timing with
	   the high nybble being 16 - x for recovery time in PCI clocks */

	FUNC1(adev, adev->pio_mode, &t, T, 0);

	clocking = 17 - FUNC2(t.active, 2, 17);
	clocking |= (16 - FUNC2(t.recover, 1, 16)) << 4;
 	/* Use the same timing for read and write bytes */
	clocking |= (clocking << 8);
	FUNC5(dev, timing, clocking);

	/* Set the IORDY enable versus DMA enable on or off properly */
	FUNC3(dev, 0x42, &iordy);
	iordy &= ~(1 << (4 + unit));
	if (mode >= XFER_MW_DMA_0 || !FUNC0(adev))
		iordy |= (1 << (4 + unit));

	/* Paranoia: We shouldn't ever get here with busy write buffers
	   but if so wait */

	FUNC3(dev, 0x43, &status);
	while (status & 0x03) {
		FUNC7(1);
		FUNC3(dev, 0x43, &status);
	}
	/* Flip the IORDY/DMA bits now we are sure the write buffers are
	   clear */
	FUNC4(dev, 0x42, iordy);

	/* TODO: Set byte 54 command timing to the best 8bit
	   mode shared by all four devices */
}