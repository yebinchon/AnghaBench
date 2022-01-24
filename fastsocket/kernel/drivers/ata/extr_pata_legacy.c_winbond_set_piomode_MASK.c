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
struct legacy_data {int /*<<< orphan*/  timing; } ;
struct ata_timing {int /*<<< orphan*/  setup; int /*<<< orphan*/  recover; int /*<<< orphan*/  active; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ class; int /*<<< orphan*/  pio_mode; } ;
struct TYPE_2__ {struct legacy_data* private_data; } ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ATA ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,int /*<<< orphan*/ ,struct ata_timing*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap, struct ata_device *adev)
{
	struct ata_timing t;
	struct legacy_data *ld_winbond = ap->host->private_data;
	int active, recovery;
	u8 reg;
	int timing = 0x88 + (ap->port_no * 4) + (adev->devno * 2);

	reg = FUNC3(ld_winbond->timing, 0x81);

	/* Get the timing data in cycles */
	if (reg & 0x40)		/* Fast VLB bus, assume 50MHz */
		FUNC1(adev, adev->pio_mode, &t, 20000, 1000);
	else
		FUNC1(adev, adev->pio_mode, &t, 30303, 1000);

	active = (FUNC2(t.active, 3, 17) - 1) & 0x0F;
	recovery = (FUNC2(t.recover, 1, 15) + 1) & 0x0F;
	timing = (active << 4) | recovery;
	FUNC4(ld_winbond->timing, timing, reg);

	/* Load the setup timing */

	reg = 0x35;
	if (adev->class != ATA_DEV_ATA)
		reg |= 0x08;	/* FIFO off */
	if (!FUNC0(adev))
		reg |= 0x02;	/* IORDY off */
	reg |= (FUNC2(t.setup, 0, 3) << 6);
	FUNC4(ld_winbond->timing, timing + 1, reg);
}