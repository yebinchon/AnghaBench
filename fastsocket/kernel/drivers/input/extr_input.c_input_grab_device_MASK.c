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
struct input_handle {struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  mutex; scalar_t__ grab; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct input_handle*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct input_handle *handle)
{
	struct input_dev *dev = handle->dev;
	int retval;

	retval = FUNC0(&dev->mutex);
	if (retval)
		return retval;

	if (dev->grab) {
		retval = -EBUSY;
		goto out;
	}

	FUNC2(dev->grab, handle);
	FUNC3();

 out:
	FUNC1(&dev->mutex);
	return retval;
}