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
struct dasd_device {int /*<<< orphan*/  state; scalar_t__ block; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STATE_KNOWN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 

__attribute__((used)) static int FUNC3(struct dasd_device *device)
{
	int rc;

	/*
	 * As long as the device is not in state DASD_STATE_NEW we want to
	 * keep the reference count > 0.
	 */
	FUNC1(device);

	if (device->block) {
		rc = FUNC0(device->block);
		if (rc) {
			FUNC2(device);
			return rc;
		}
	}
	device->state = DASD_STATE_KNOWN;
	return 0;
}