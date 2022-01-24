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
struct TYPE_2__ {int effect_id; } ;
struct uinput_request {int id; int retval; int /*<<< orphan*/  done; TYPE_1__ u; int /*<<< orphan*/  code; } ;
struct uinput_device {int dummy; } ;
struct input_dev {int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  UI_FF_ERASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct uinput_device* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct uinput_device*,struct uinput_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct input_dev *dev, int effect_id)
{
	struct uinput_device *udev = FUNC1(dev);
	struct uinput_request request;
	int retval;

	if (!FUNC2(EV_FF, dev->evbit))
		return -ENOSYS;

	request.id = -1;
	FUNC0(&request.done);
	request.code = UI_FF_ERASE;
	request.u.effect_id = effect_id;

	retval = FUNC3(udev, &request);
	if (!retval) {
		FUNC4(&request.done);
		retval = request.retval;
	}

	return retval;
}