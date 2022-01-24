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
struct dasd_device {int stopped; int /*<<< orphan*/  flags; scalar_t__ block; TYPE_1__* discipline; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int (* restore ) (struct dasd_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FLAG_SUSPENDED ; 
 int DASD_STOPPED_PM ; 
 int DASD_UNRESUMED_PM ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dasd_device* FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct dasd_device*) ; 
 int FUNC8 (struct dasd_device*) ; 

int FUNC9(struct ccw_device *cdev)
{
	struct dasd_device *device = FUNC3(cdev);
	int rc = 0;

	if (FUNC0(device))
		return FUNC1(device);

	/* allow new IO again */
	FUNC4(device,
				     (DASD_STOPPED_PM | DASD_UNRESUMED_PM));

	FUNC7(device);

	/*
	 * call discipline restore function
	 * if device is stopped do nothing e.g. for disconnected devices
	 */
	if (device->discipline->restore && !(device->stopped))
		rc = device->discipline->restore(device);
	if (rc || device->stopped)
		/*
		 * if the resume failed for the DASD we put it in
		 * an UNRESUMED stop state
		 */
		device->stopped |= DASD_UNRESUMED_PM;

	if (device->block)
		FUNC6(device->block);

	FUNC2(DASD_FLAG_SUSPENDED, &device->flags);
	FUNC5(device);
	return 0;
}