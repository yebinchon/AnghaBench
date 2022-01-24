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
struct ata_timing {int /*<<< orphan*/  recover; int /*<<< orphan*/  active; } ;
struct TYPE_2__ {int /*<<< orphan*/  status_addr; int /*<<< orphan*/  device_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;
struct ata_device {int /*<<< orphan*/  pio_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_device*,int /*<<< orphan*/ ,struct ata_timing*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap, struct ata_device *adev)
{
	u8 active, recover;
	struct ata_timing t;

	/* Get the timing data in cycles. For now play safe at 50Mhz */
	FUNC0(adev, adev->pio_mode, &t, 20000, 1000);

	active = FUNC1(t.active, 2, 15);
	recover = FUNC1(t.recover, 4, 15);

	FUNC2(0x3E6);
	FUNC2(0x3E6);
	FUNC2(0x3E6);
	FUNC2(0x3E6);

	FUNC4(recover << 4 | active, ap->ioaddr.device_addr);
	FUNC3(ap->ioaddr.status_addr);
}