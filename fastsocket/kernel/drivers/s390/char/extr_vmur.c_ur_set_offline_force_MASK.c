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
struct urdev {TYPE_1__* char_device; int /*<<< orphan*/  ref_count; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct urdev* FUNC4 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct urdev*) ; 
 int /*<<< orphan*/  vmur_class ; 

__attribute__((used)) static int FUNC6(struct ccw_device *cdev, int force)
{
	struct urdev *urd;
	int rc;

	FUNC0("ur_set_offline: cdev=%p\n", cdev);
	urd = FUNC4(cdev);
	if (!urd)
		/* ur_remove already deleted our urd */
		return -ENODEV;
	if (!urd->char_device) {
		/* Another ur_set_offline was faster */
		rc = -EBUSY;
		goto fail_urdev_put;
	}
	if (!force && (FUNC1(&urd->ref_count) > 2)) {
		/* There is still a user of urd (e.g. ur_open) */
		FUNC0("ur_set_offline: BUSY\n");
		rc = -EBUSY;
		goto fail_urdev_put;
	}
	FUNC3(vmur_class, urd->char_device->dev);
	FUNC2(urd->char_device);
	urd->char_device = NULL;
	rc = 0;

fail_urdev_put:
	FUNC5(urd);
	return rc;
}