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
struct dasd_device {scalar_t__ block; int /*<<< orphan*/  state; TYPE_1__* base_discipline; TYPE_2__* discipline; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* uncheck_device ) (struct dasd_device*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 

__attribute__((used)) static int FUNC5(struct dasd_device *device)
{
	/* Disable extended error reporting for this device. */
	FUNC0(device);
	/* Forget the discipline information. */
	if (device->discipline) {
		if (device->discipline->uncheck_device)
			device->discipline->uncheck_device(device);
		FUNC3(device->discipline->owner);
	}
	device->discipline = NULL;
	if (device->base_discipline)
		FUNC3(device->base_discipline->owner);
	device->base_discipline = NULL;
	device->state = DASD_STATE_NEW;

	if (device->block)
		FUNC1(device->block);

	/* Give up reference we took in dasd_state_new_to_known. */
	FUNC2(device);
	return 0;
}