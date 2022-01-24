#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_file {scalar_t__ is_master; TYPE_1__* minor; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_2__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* master_drop ) (struct drm_device*,struct drm_file*,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_file*,int) ; 

int FUNC4(struct drm_device *dev, void *data,
			 struct drm_file *file_priv)
{
	if (!file_priv->is_master)
		return -EINVAL;

	if (!file_priv->minor->master)
		return -EINVAL;

	FUNC1(&dev->struct_mutex);
	if (dev->driver->master_drop)
		dev->driver->master_drop(dev, file_priv, false);
	FUNC0(&file_priv->minor->master);
	file_priv->is_master = 0;
	FUNC2(&dev->struct_mutex);
	return 0;
}