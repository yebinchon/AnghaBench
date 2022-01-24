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
struct uinput_device {int state; struct input_dev* dev; } ;
struct input_dev {char* name; char* phys; } ;
typedef  enum uinput_state { ____Placeholder_uinput_state } uinput_state ;

/* Variables and functions */
 int UIST_CREATED ; 
 int UIST_NEW_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct uinput_device*) ; 

__attribute__((used)) static void FUNC4(struct uinput_device *udev)
{
	const char *name, *phys;
	struct input_dev *dev = udev->dev;
	enum uinput_state old_state = udev->state;

	udev->state = UIST_NEW_DEVICE;

	if (dev) {
		name = dev->name;
		phys = dev->phys;
		if (old_state == UIST_CREATED) {
			FUNC3(udev);
			FUNC1(dev);
		} else {
			FUNC0(dev);
		}
		FUNC2(name);
		FUNC2(phys);
		udev->dev = NULL;
	}
}