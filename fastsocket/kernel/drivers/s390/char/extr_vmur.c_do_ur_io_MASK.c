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
struct urdev {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/ * io_done; struct ccw_device* cdev; } ;
struct ccw_device {int dummy; } ;
struct ccw1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct ccw_device*,struct ccw1*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct urdev *urd, struct ccw1 *cpa)
{
	int rc;
	struct ccw_device *cdev = urd->cdev;
	FUNC0(event);

	FUNC1("do_ur_io: cpa=%p\n", cpa);

	rc = FUNC4(&urd->io_mutex);
	if (rc)
		return rc;

	urd->io_done = &event;

	FUNC6(FUNC3(cdev));
	rc = FUNC2(cdev, cpa, 1, 0, 0);
	FUNC7(FUNC3(cdev));

	FUNC1("do_ur_io: ccw_device_start returned %d\n", rc);
	if (rc)
		goto out;

	FUNC8(&event);
	FUNC1("do_ur_io: I/O complete\n");
	rc = 0;

out:
	FUNC5(&urd->io_mutex);
	return rc;
}