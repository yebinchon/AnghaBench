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
struct input_dev {int (* getkeycode ) (struct input_dev*,int,int*) ;int (* setkeycode ) (struct input_dev*,int,int) ;int /*<<< orphan*/  event_lock; scalar_t__ sync; int /*<<< orphan*/  key; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_SYN ; 
 int KEY_MAX ; 
 int SYN_REPORT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct input_dev*,int,int*) ; 
 int FUNC6 (struct input_dev*,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct input_dev *dev, int scancode, int keycode)
{
	unsigned long flags;
	int old_keycode;
	int retval;

	if (scancode < 0)
		return -EINVAL;

	if (keycode < 0 || keycode > KEY_MAX)
		return -EINVAL;

	FUNC3(&dev->event_lock, flags);

	retval = dev->getkeycode(dev, scancode, &old_keycode);
	if (retval)
		goto out;

	retval = dev->setkeycode(dev, scancode, keycode);
	if (retval)
		goto out;

	/*
	 * Simulate keyup event if keycode is not present
	 * in the keymap anymore
	 */
	if (FUNC7(EV_KEY, dev->evbit) &&
	    !FUNC2(old_keycode, dev->keybit, KEY_MAX) &&
	    FUNC0(old_keycode, dev->key)) {

		FUNC1(dev, EV_KEY, old_keycode, 0);
		if (dev->sync)
			FUNC1(dev, EV_SYN, SYN_REPORT, 1);
	}

 out:
	FUNC4(&dev->event_lock, flags);

	return retval;
}