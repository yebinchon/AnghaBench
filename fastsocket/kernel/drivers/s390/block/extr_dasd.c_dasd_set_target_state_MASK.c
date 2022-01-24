#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dasd_device {int target; int state; int /*<<< orphan*/  state_mutex; } ;

/* Variables and functions */
 int DASD_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  dasd_init_waitq ; 
 scalar_t__ dasd_probeonly ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct dasd_device *device, int target)
{
	FUNC1(device);
	FUNC3(&device->state_mutex);
	/* If we are in probeonly mode stop at DASD_STATE_READY. */
	if (dasd_probeonly && target > DASD_STATE_READY)
		target = DASD_STATE_READY;
	if (device->target != target) {
		if (device->state == target)
			FUNC5(&dasd_init_waitq);
		device->target = target;
	}
	if (device->state != device->target)
		FUNC0(device);
	FUNC4(&device->state_mutex);
	FUNC2(device);
}