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
struct TYPE_2__ {unsigned int runtime_status; int /*<<< orphan*/  lock; scalar_t__ runtime_error; int /*<<< orphan*/  child_count; int /*<<< orphan*/  ignore_children; int /*<<< orphan*/  disable_depth; } ;
struct device {TYPE_1__ power; struct device* parent; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 unsigned int RPM_ACTIVE ; 
 unsigned int RPM_SUSPENDED ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct device *dev, unsigned int status)
{
	struct device *parent = dev->parent;
	unsigned long flags;
	bool notify_parent = false;
	int error = 0;

	if (status != RPM_ACTIVE && status != RPM_SUSPENDED)
		return -EINVAL;

	FUNC3(&dev->power.lock, flags);

	if (!dev->power.runtime_error && !dev->power.disable_depth) {
		error = -EAGAIN;
		goto out;
	}

	if (dev->power.runtime_status == status)
		goto out_set;

	if (status == RPM_SUSPENDED) {
		/* It always is possible to set the status to 'suspended'. */
		if (parent) {
			FUNC0(&parent->power.child_count, -1, 0);
			notify_parent = !parent->power.ignore_children;
		}
		goto out_set;
	}

	if (parent) {
		FUNC4(&parent->power.lock, SINGLE_DEPTH_NESTING);

		/*
		 * It is invalid to put an active child under a parent that is
		 * not active, has run-time PM enabled and the
		 * 'power.ignore_children' flag unset.
		 */
		if (!parent->power.disable_depth
		    && !parent->power.ignore_children
		    && parent->power.runtime_status != RPM_ACTIVE) {
			error = -EBUSY;
		} else {
			if (dev->power.runtime_status == RPM_SUSPENDED)
				FUNC1(&parent->power.child_count);
		}

		FUNC5(&parent->power.lock);

		if (error)
			goto out;
	}

 out_set:
	dev->power.runtime_status = status;
	dev->power.runtime_error = 0;
 out:
	FUNC6(&dev->power.lock, flags);

	if (notify_parent)
		FUNC2(parent);

	return error;
}