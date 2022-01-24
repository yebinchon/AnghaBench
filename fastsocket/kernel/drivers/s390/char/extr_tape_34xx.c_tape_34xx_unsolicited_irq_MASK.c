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
struct tape_device {int /*<<< orphan*/  cdev_id; } ;
struct TYPE_3__ {int dstat; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct irb {TYPE_2__ scsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int TAPE_IO_SUCCESS ; 
 int /*<<< orphan*/  TO_MSEN ; 
 int /*<<< orphan*/  FUNC1 (struct tape_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tape_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tape_device*,int /*<<< orphan*/ *,struct irb*) ; 

__attribute__((used)) static int
FUNC4(struct tape_device *device, struct irb *irb)
{
	if (irb->scsw.cmd.dstat == 0x85) { /* READY */
		/* A medium was inserted in the drive. */
		FUNC0(6, "xuud med\n");
		FUNC1(device, 0);
		FUNC2(device, TO_MSEN);
	} else {
		FUNC0(3, "unsol.irq! dev end: %08x\n", device->cdev_id);
		FUNC3(device, NULL, irb);
	}
	return TAPE_IO_SUCCESS;
}