#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tape_device {int tape_state; TYPE_1__* cdev; int /*<<< orphan*/  cdev_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct ccw_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,struct ccw_device*) ; 
#define  TS_INIT 130 
#define  TS_NOT_OPER 129 
#define  TS_UNUSED 128 
 int /*<<< orphan*/  FUNC2 (struct tape_device*) ; 
 struct tape_device* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tape_attr_group ; 
 int /*<<< orphan*/  FUNC11 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct tape_device*,int const) ; 

void
FUNC14(struct ccw_device *cdev)
{
	struct tape_device *	device;

	device = FUNC3(&cdev->dev);
	if (!device) {
		return;
	}
	FUNC1(3, "(%08x): tape_generic_remove(%p)\n", device->cdev_id, cdev);

	FUNC8(FUNC6(device->cdev));
	switch (device->tape_state) {
		case TS_INIT:
			FUNC13(device, TS_NOT_OPER);
		case TS_NOT_OPER:
			/*
			 * Nothing to do.
			 */
			FUNC9(FUNC6(device->cdev));
			break;
		case TS_UNUSED:
			/*
			 * Need only to release the device.
			 */
			FUNC13(device, TS_NOT_OPER);
			FUNC9(FUNC6(device->cdev));
			FUNC11(device);
			break;
		default:
			/*
			 * There may be requests on the queue. We will not get
			 * an interrupt for a request that was running. So we
			 * just post them all as I/O errors.
			 */
			FUNC0(3, "(%08x): Drive in use vanished!\n",
				device->cdev_id);
			FUNC7("%s: A tape unit was detached while in "
				   "use\n", FUNC4(&device->cdev->dev));
			FUNC13(device, TS_NOT_OPER);
			FUNC2(device);
			FUNC9(FUNC6(device->cdev));
			FUNC11(device);
	}

	if (FUNC3(&cdev->dev)) {
		FUNC10(&cdev->dev.kobj, &tape_attr_group);
		FUNC5(&cdev->dev, FUNC12(FUNC3(&cdev->dev)));
	}
}