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
struct device {int dummy; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_1__* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_3__ {int state; TYPE_2__ dev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEV_EVENT_VERIFY ; 
#define  DEV_STATE_DISCONNECTED 129 
#define  DEV_STATE_DISCONNECTED_SENSE_ID 128 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ccw_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, void *data)
{
	struct ccw_device *cdev = FUNC4(dev);
	int *redo = data;

	FUNC2(cdev->ccwlock);
	switch (cdev->private->state) {
	case DEV_STATE_DISCONNECTED:
		FUNC0(3, "recovery: trigger 0.%x.%04x\n",
			      cdev->private->dev_id.ssid,
			      cdev->private->dev_id.devno);
		FUNC1(cdev, DEV_EVENT_VERIFY);
		*redo = 1;
		break;
	case DEV_STATE_DISCONNECTED_SENSE_ID:
		*redo = 1;
		break;
	}
	FUNC3(cdev->ccwlock);

	return 0;
}