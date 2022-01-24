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
struct dasd_device {scalar_t__ state; TYPE_1__* discipline; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* kick_validate ) (struct dasd_device*) ;} ;

/* Variables and functions */
 scalar_t__ DASD_STATE_KNOWN ; 
 int /*<<< orphan*/  DASD_STATE_NEW ; 
 int /*<<< orphan*/  DASD_STATE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  dasd_init_waitq ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct dasd_device *device)
{
	FUNC2(device, DASD_STATE_ONLINE);
	if (device->state <= DASD_STATE_KNOWN)
		/* No discipline for device found. */
		FUNC2(device, DASD_STATE_NEW);
	/* Now wait for the devices to come up. */
	FUNC4(dasd_init_waitq, FUNC0(device));

	FUNC1(device);
	if (device->discipline->kick_validate)
		device->discipline->kick_validate(device);
}