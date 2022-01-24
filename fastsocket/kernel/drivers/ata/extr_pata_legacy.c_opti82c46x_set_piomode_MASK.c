#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct ata_timing {int /*<<< orphan*/  setup; int /*<<< orphan*/  recover; int /*<<< orphan*/  active; } ;
struct TYPE_3__ {int /*<<< orphan*/  nsect_addr; int /*<<< orphan*/  lbal_addr; int /*<<< orphan*/  data_addr; int /*<<< orphan*/  device_addr; int /*<<< orphan*/  error_addr; } ;
struct ata_port {TYPE_2__* host; TYPE_1__ ioaddr; } ;
struct ata_device {int devno; int /*<<< orphan*/  pio_mode; } ;
struct TYPE_4__ {struct ata_port* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_TIMING_SETUP ; 
 struct ata_device* FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,int /*<<< orphan*/ ,struct ata_timing*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_timing*,struct ata_timing*,struct ata_timing*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct ata_port *ap, struct ata_device *adev)
{
	u8 active, recover, setup;
	struct ata_timing t;
	struct ata_device *pair = FUNC0(adev);
	int clock;
	int khz[4] = { 50000, 40000, 33000, 25000 };
	u8 rc;
	u8 sysclk;

	/* Get the clock */
	sysclk = FUNC7(0xAC) & 0xC0;	/* BIOS set */

	/* Enter configuration mode */
	FUNC4(ap->ioaddr.error_addr);
	FUNC4(ap->ioaddr.error_addr);
	FUNC6(3, ap->ioaddr.nsect_addr);

	/* Read VLB clock strapping */
	clock = 1000000000 / khz[sysclk];

	/* Get the timing data in cycles */
	FUNC1(adev, adev->pio_mode, &t, clock, 1000);

	/* Setup timing is shared */
	if (pair) {
		struct ata_timing tp;
		FUNC1(pair, pair->pio_mode, &tp, clock, 1000);

		FUNC2(&t, &tp, &t, ATA_TIMING_SETUP);
	}

	active = FUNC3(t.active, 2, 17) - 2;
	recover = FUNC3(t.recover, 1, 16) - 1;
	setup = FUNC3(t.setup, 1, 4) - 1;

	/* Select the right timing bank for write timing */
	rc = FUNC5(ap->ioaddr.lbal_addr);
	rc &= 0x7F;
	rc |= (adev->devno << 7);
	FUNC6(rc, ap->ioaddr.lbal_addr);

	/* Write the timings */
	FUNC6(active << 4 | recover, ap->ioaddr.error_addr);

	/* Select the right bank for read timings, also
	   load the shared timings for address */
	rc = FUNC5(ap->ioaddr.device_addr);
	rc &= 0xC0;
	rc |= adev->devno;	/* Index select */
	rc |= (setup << 4) | 0x04;
	FUNC6(rc, ap->ioaddr.device_addr);

	/* Load the read timings */
	FUNC6(active << 4 | recover, ap->ioaddr.data_addr);

	/* Ensure the timing register mode is right */
	rc = FUNC5(ap->ioaddr.lbal_addr);
	rc &= 0x73;
	rc |= 0x84;
	FUNC6(rc, ap->ioaddr.lbal_addr);

	/* Exit command mode */
	FUNC6(0x83,  ap->ioaddr.nsect_addr);

	/* We need to know this for quad device on the MVB */
	ap->host->private_data = ap;
}