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
typedef  int /*<<< orphan*/  u32 ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_file {int /*<<< orphan*/  table_lock; int /*<<< orphan*/  object_idr; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* gem_close_object ) (struct drm_gem_object*,struct drm_file*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,struct drm_file*) ; 
 struct drm_gem_object* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*,struct drm_file*) ; 

int
FUNC7(struct drm_file *filp, u32 handle)
{
	struct drm_device *dev;
	struct drm_gem_object *obj;

	/* This is gross. The idr system doesn't let us try a delete and
	 * return an error code.  It just spews if you fail at deleting.
	 * So, we have to grab a lock around finding the object and then
	 * doing the delete on it and dropping the refcount, or the user
	 * could race us to double-decrement the refcount and cause a
	 * use-after-free later.  Given the frequency of our handle lookups,
	 * we may want to use ida for number allocation and a hash table
	 * for the pointers, anyway.
	 */
	FUNC4(&filp->table_lock);

	/* Check if we currently have a reference on the object */
	obj = FUNC2(&filp->object_idr, handle);
	if (obj == NULL) {
		FUNC5(&filp->table_lock);
		return -EINVAL;
	}
	dev = obj->dev;

	/* Release reference and decrement refcount. */
	FUNC3(&filp->object_idr, handle);
	FUNC5(&filp->table_lock);

	FUNC1(obj, filp);

	if (dev->driver->gem_close_object)
		dev->driver->gem_close_object(obj, filp);
	FUNC0(obj);

	return 0;
}