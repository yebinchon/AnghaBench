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
struct dasd_eckd_private {struct alias_lcu* lcu; } ;
struct dasd_device {int /*<<< orphan*/  cdev; int /*<<< orphan*/  alias_list; scalar_t__ private; } ;
struct alias_lcu {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  active_devices; } ;

/* Variables and functions */
 int UPDATE_PENDING ; 
 int FUNC0 (struct alias_lcu*,struct dasd_device*,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct alias_lcu*,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC8(struct dasd_device *device)
{
	struct dasd_eckd_private *private;
	struct alias_lcu *lcu;
	unsigned long flags;
	int rc;

	private = (struct dasd_eckd_private *) device->private;
	lcu = private->lcu;
	rc = 0;

	/* need to take cdev lock before lcu lock */
	FUNC5(FUNC2(device->cdev), flags);
	FUNC4(&lcu->lock);
	if (!(lcu->flags & UPDATE_PENDING)) {
		rc = FUNC0(lcu, device, device);
		if (rc)
			lcu->flags |= UPDATE_PENDING;
	}
	if (lcu->flags & UPDATE_PENDING) {
		FUNC3(&device->alias_list, &lcu->active_devices);
		FUNC1(lcu, device);
	}
	FUNC6(&lcu->lock);
	FUNC7(FUNC2(device->cdev), flags);
	return rc;
}