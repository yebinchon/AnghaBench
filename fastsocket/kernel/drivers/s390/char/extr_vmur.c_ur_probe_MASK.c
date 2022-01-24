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
struct urdev {int class; } ;
struct ccw_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int DEV_CLASS_UR_I ; 
 int DEV_CLASS_UR_O ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct urdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 int FUNC3 (struct urdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ur_int_handler ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct urdev* FUNC10 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct urdev*) ; 
 int /*<<< orphan*/  vmur_mutex ; 

__attribute__((used)) static int FUNC12(struct ccw_device *cdev)
{
	struct urdev *urd;
	int rc;

	FUNC0("ur_probe: cdev=%p\n", cdev);

	FUNC4(&vmur_mutex);
	urd = FUNC10(cdev);
	if (!urd) {
		rc = -ENOMEM;
		goto fail_unlock;
	}

	rc = FUNC8(&cdev->dev);
	if (rc) {
		rc = -ENOMEM;
		goto fail_urdev_put;
	}
	cdev->handler = ur_int_handler;

	/* validate virtual unit record device */
	urd->class = FUNC3(urd);
	if (urd->class < 0) {
		rc = urd->class;
		goto fail_remove_attr;
	}
	if ((urd->class != DEV_CLASS_UR_I) && (urd->class != DEV_CLASS_UR_O)) {
		rc = -EOPNOTSUPP;
		goto fail_remove_attr;
	}
	FUNC6(FUNC2(cdev));
	FUNC1(&cdev->dev, urd);
	FUNC7(FUNC2(cdev));

	FUNC5(&vmur_mutex);
	return 0;

fail_remove_attr:
	FUNC9(&cdev->dev);
fail_urdev_put:
	FUNC11(urd);
fail_unlock:
	FUNC5(&vmur_mutex);
	return rc;
}