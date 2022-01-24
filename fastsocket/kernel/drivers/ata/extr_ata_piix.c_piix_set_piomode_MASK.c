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
struct ata_port {int port_no; scalar_t__ udma_mask; TYPE_1__* host; } ;
struct ata_device {unsigned int pio_mode; int devno; scalar_t__ class; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ATA ; 
 unsigned int XFER_PIO_0 ; 
 scalar_t__ FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,unsigned int,int) ; 
 int /*<<< orphan*/  piix_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ata_port *ap, struct ata_device *adev)
{
	struct pci_dev *dev	= FUNC7(ap->host->dev);
	unsigned long flags;
	unsigned int pio	= adev->pio_mode - XFER_PIO_0;
	unsigned int is_slave	= (adev->devno != 0);
	unsigned int master_port= ap->port_no ? 0x42 : 0x40;
	unsigned int slave_port	= 0x44;
	u16 master_data;
	u8 slave_data;
	u8 udma_enable;
	int control = 0;

	/*
	 *	See Intel Document 298600-004 for the timing programing rules
	 *	for ICH controllers.
	 */

	static const	 /* ISP  RTC */
	u8 timings[][2]	= { { 0, 0 },
			    { 0, 0 },
			    { 1, 0 },
			    { 2, 1 },
			    { 2, 3 }, };

	if (pio >= 2)
		control |= 1;	/* TIME1 enable */
	if (FUNC0(adev))
		control |= 2;	/* IE enable */

	/* Intel specifies that the PPE functionality is for disk only */
	if (adev->class == ATA_DEV_ATA)
		control |= 4;	/* PPE enable */

	FUNC5(&piix_lock, flags);

	/* PIO configuration clears DTE unconditionally.  It will be
	 * programmed in set_dmamode which is guaranteed to be called
	 * after set_piomode if any DMA mode is available.
	 */
	FUNC2(dev, master_port, &master_data);
	if (is_slave) {
		/* clear TIME1|IE1|PPE1|DTE1 */
		master_data &= 0xff0f;
		/* Enable SITRE (separate slave timing register) */
		master_data |= 0x4000;
		/* enable PPE1, IE1 and TIME1 as needed */
		master_data |= (control << 4);
		FUNC1(dev, slave_port, &slave_data);
		slave_data &= (ap->port_no ? 0x0f : 0xf0);
		/* Load the timing nibble for this slave */
		slave_data |= ((timings[pio][0] << 2) | timings[pio][1])
						<< (ap->port_no ? 4 : 0);
	} else {
		/* clear ISP|RCT|TIME0|IE0|PPE0|DTE0 */
		master_data &= 0xccf0;
		/* Enable PPE, IE and TIME as appropriate */
		master_data |= control;
		/* load ISP and RCT */
		master_data |=
			(timings[pio][0] << 12) |
			(timings[pio][1] << 8);
	}
	FUNC4(dev, master_port, master_data);
	if (is_slave)
		FUNC3(dev, slave_port, slave_data);

	/* Ensure the UDMA bit is off - it will be turned back on if
	   UDMA is selected */

	if (ap->udma_mask) {
		FUNC1(dev, 0x48, &udma_enable);
		udma_enable &= ~(1 << (2 * ap->port_no + adev->devno));
		FUNC3(dev, 0x48, udma_enable);
	}

	FUNC6(&piix_lock, flags);
}