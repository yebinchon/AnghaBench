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
struct ata_timing {scalar_t__ udma; scalar_t__ recover; scalar_t__ active; scalar_t__ rec8b; scalar_t__ act8b; scalar_t__ setup; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; int pio_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_TIMING_8BIT ; 
 struct ata_device* FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,int,struct ata_timing*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_timing*,struct ata_timing*,struct ata_timing*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ata_port *ap, struct ata_device *adev, int mode, int tdiv, int set_ast, int udma_type)
{
	struct pci_dev *pdev = FUNC6(ap->host->dev);
	struct ata_device *peer = FUNC0(adev);
	struct ata_timing t, p;
	static int via_clock = 33333;	/* Bus clock in kHZ - ought to be tunable one day */
	unsigned long T =  1000000000 / via_clock;
	unsigned long UT = T/tdiv;
	int ut;
	int offset = 3 - (2*ap->port_no) - adev->devno;

	/* Calculate the timing values we require */
	FUNC1(adev, mode, &t, T, UT);

	/* We share 8bit timing so we must merge the constraints */
	if (peer) {
		if (peer->pio_mode) {
			FUNC1(peer, peer->pio_mode, &p, T, UT);
			FUNC2(&p, &t, &t, ATA_TIMING_8BIT);
		}
	}

	/* Address setup is programmable but breaks on UDMA133 setups */
	if (set_ast) {
		u8 setup;	/* 2 bits per drive */
		int shift = 2 * offset;

		FUNC4(pdev, 0x4C, &setup);
		setup &= ~(3 << shift);
		setup |= FUNC3(t.setup, 1, 4) << shift;	/* 1,4 or 1,4 - 1  FIXME */
		FUNC5(pdev, 0x4C, setup);
	}

	/* Load the PIO mode bits */
	FUNC5(pdev, 0x4F - ap->port_no,
		((FUNC3(t.act8b, 1, 16) - 1) << 4) | (FUNC3(t.rec8b, 1, 16) - 1));
	FUNC5(pdev, 0x48 + offset,
		((FUNC3(t.active, 1, 16) - 1) << 4) | (FUNC3(t.recover, 1, 16) - 1));

	/* Load the UDMA bits according to type */
	switch(udma_type) {
		default:
			/* BUG() ? */
			/* fall through */
		case 33:
			ut = t.udma ? (0xe0 | (FUNC3(t.udma, 2, 5) - 2)) : 0x03;
			break;
		case 66:
			ut = t.udma ? (0xe8 | (FUNC3(t.udma, 2, 9) - 2)) : 0x0f;
			break;
		case 100:
			ut = t.udma ? (0xe0 | (FUNC3(t.udma, 2, 9) - 2)) : 0x07;
			break;
		case 133:
			ut = t.udma ? (0xe0 | (FUNC3(t.udma, 2, 9) - 2)) : 0x07;
			break;
	}

	/* Set UDMA unless device is not UDMA capable */
	if (udma_type && t.udma) {
		u8 cable80_status;

		/* Get 80-wire cable detection bit */
		FUNC4(pdev, 0x50 + offset, &cable80_status);
		cable80_status &= 0x10;

		FUNC5(pdev, 0x50 + offset, ut | cable80_status);
	}
}