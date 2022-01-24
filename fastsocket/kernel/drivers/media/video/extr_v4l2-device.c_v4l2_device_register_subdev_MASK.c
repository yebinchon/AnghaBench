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
struct v4l2_subdev {int /*<<< orphan*/  list; struct v4l2_device* v4l2_dev; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  owner; int /*<<< orphan*/ * name; } ;
struct v4l2_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  subdevs; int /*<<< orphan*/  ctrl_handler; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct v4l2_device *v4l2_dev,
						struct v4l2_subdev *sd)
{
	int err;

	/* Check for valid input */
	if (v4l2_dev == NULL || sd == NULL || !sd->name[0])
		return -EINVAL;
	/* Warn if we apparently re-register a subdev */
	FUNC0(sd->v4l2_dev != NULL);
	if (!FUNC4(sd->owner))
		return -ENODEV;
	/* This just returns 0 if either of the two args is NULL */
	err = FUNC5(v4l2_dev->ctrl_handler, sd->ctrl_handler);
	if (err)
		return err;
	sd->v4l2_dev = v4l2_dev;
	FUNC2(&v4l2_dev->lock);
	FUNC1(&sd->list, &v4l2_dev->subdevs);
	FUNC3(&v4l2_dev->lock);
	return 0;
}