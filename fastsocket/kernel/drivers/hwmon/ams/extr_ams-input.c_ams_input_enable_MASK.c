#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_8__ {scalar_t__ vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; TYPE_2__ dev; TYPE_1__ id; } ;
typedef  void* s8 ;
struct TYPE_12__ {TYPE_4__* idev; TYPE_3__* of_dev; int /*<<< orphan*/  bustype; void* zcalib; void* ycalib; void* xcalib; } ;
struct TYPE_11__ {int poll_interval; struct input_dev* input; int /*<<< orphan*/  poll; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  ams_idev_poll ; 
 TYPE_7__ ams_info ; 
 int /*<<< orphan*/  FUNC0 (void**,void**,void**) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int joystick ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct input_dev *input;
	s8 x, y, z;
	int error;

	FUNC0(&x, &y, &z);
	ams_info.xcalib = x;
	ams_info.ycalib = y;
	ams_info.zcalib = z;

	ams_info.idev = FUNC1();
	if (!ams_info.idev)
		return -ENOMEM;

	ams_info.idev->poll = ams_idev_poll;
	ams_info.idev->poll_interval = 25;

	input = ams_info.idev->input;
	input->name = "Apple Motion Sensor";
	input->id.bustype = ams_info.bustype;
	input->id.vendor = 0;
	input->dev.parent = &ams_info.of_dev->dev;

	FUNC4(input, ABS_X, -50, 50, 3, 0);
	FUNC4(input, ABS_Y, -50, 50, 3, 0);
	FUNC4(input, ABS_Z, -50, 50, 3, 0);

	FUNC5(EV_ABS, input->evbit);
	FUNC5(EV_KEY, input->evbit);
	FUNC5(BTN_TOUCH, input->keybit);

	error = FUNC3(ams_info.idev);
	if (error) {
		FUNC2(ams_info.idev);
		ams_info.idev = NULL;
		return error;
	}

	joystick = 1;

	return 0;
}