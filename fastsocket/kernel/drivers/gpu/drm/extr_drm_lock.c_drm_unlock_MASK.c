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
struct drm_master {int /*<<< orphan*/  lock; } ;
struct drm_lock {scalar_t__ context; } ;
struct drm_file {struct drm_master* master; } ;
struct drm_device {int /*<<< orphan*/ * counts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ DRM_KERNEL_CONTEXT ; 
 int EINVAL ; 
 size_t _DRM_STAT_UNLOCKS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	struct drm_lock *lock = data;
	struct drm_master *master = file_priv->master;

	if (lock->context == DRM_KERNEL_CONTEXT) {
		FUNC0("Process %d using kernel context %d\n",
			  FUNC3(current), lock->context);
		return -EINVAL;
	}

	FUNC1(&dev->counts[_DRM_STAT_UNLOCKS]);

	if (FUNC2(&master->lock, lock->context)) {
		/* FIXME: Should really bail out here. */
	}

	FUNC4();
	return 0;
}