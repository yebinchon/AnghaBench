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
struct file {struct evdev_client* private_data; } ;
struct evdev_client {struct evdev* evdev; } ;
struct evdev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  handle; int /*<<< orphan*/  exist; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *,struct file*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct file *file, fl_owner_t id)
{
	struct evdev_client *client = file->private_data;
	struct evdev *evdev = client->evdev;
	int retval;

	retval = FUNC1(&evdev->mutex);
	if (retval)
		return retval;

	if (!evdev->exist)
		retval = -ENODEV;
	else
		retval = FUNC0(&evdev->handle, file);

	FUNC2(&evdev->mutex);
	return retval;
}