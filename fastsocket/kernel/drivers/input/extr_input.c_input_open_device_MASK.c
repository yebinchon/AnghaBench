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
struct input_handle {int /*<<< orphan*/  open; struct input_dev* dev; } ;
struct input_dev {int (* open ) (struct input_dev*) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  users; scalar_t__ going_away; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct input_handle *handle)
{
	struct input_dev *dev = handle->dev;
	int retval;

	retval = FUNC0(&dev->mutex);
	if (retval)
		return retval;

	if (dev->going_away) {
		retval = -ENODEV;
		goto out;
	}

	handle->open++;

	if (!dev->users++ && dev->open)
		retval = dev->open(dev);

	if (retval) {
		dev->users--;
		if (!--handle->open) {
			/*
			 * Make sure we are not delivering any more events
			 * through this handle
			 */
			FUNC3();
		}
	}

 out:
	FUNC1(&dev->mutex);
	return retval;
}