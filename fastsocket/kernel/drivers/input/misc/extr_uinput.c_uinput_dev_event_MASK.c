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
struct uinput_device {size_t head; int /*<<< orphan*/  waitq; TYPE_1__* buff; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {unsigned int type; unsigned int code; int value; int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int UINPUT_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct uinput_device* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
	struct uinput_device	*udev = FUNC1(dev);

	udev->buff[udev->head].type = type;
	udev->buff[udev->head].code = code;
	udev->buff[udev->head].value = value;
	FUNC0(&udev->buff[udev->head].time);
	udev->head = (udev->head + 1) % UINPUT_BUFFER_SIZE;

	FUNC2(&udev->waitq);

	return 0;
}