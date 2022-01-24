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
typedef  void* uint64_t ;
struct drm_gem_object {scalar_t__ name; } ;
struct drm_gem_flink {void* name; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  object_name_lock; int /*<<< orphan*/  object_name_idr; TYPE_1__* driver; } ;
struct TYPE_2__ {int driver_features; } ;

/* Variables and functions */
 int DRIVER_GEM ; 
 int EAGAIN ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct drm_gem_object* FUNC0 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct drm_gem_object*,int,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct drm_device *dev, void *data,
		    struct drm_file *file_priv)
{
	struct drm_gem_flink *args = data;
	struct drm_gem_object *obj;
	int ret;

	if (!(dev->driver->driver_features & DRIVER_GEM))
		return -ENODEV;

	obj = FUNC0(dev, file_priv, args->handle);
	if (obj == NULL)
		return -ENOENT;

again:
	if (FUNC4(&dev->object_name_idr, GFP_KERNEL) == 0) {
		ret = -ENOMEM;
		goto err;
	}

	FUNC5(&dev->object_name_lock);
	if (!obj->name) {
		ret = FUNC3(&dev->object_name_idr, obj, 1,
					&obj->name);
		args->name = (uint64_t) obj->name;
		FUNC6(&dev->object_name_lock);

		if (ret == -EAGAIN)
			goto again;
		else if (ret)
			goto err;

		/* Allocate a reference for the name table.  */
		FUNC1(obj);
	} else {
		args->name = (uint64_t) obj->name;
		FUNC6(&dev->object_name_lock);
		ret = 0;
	}

err:
	FUNC2(obj);
	return ret;
}