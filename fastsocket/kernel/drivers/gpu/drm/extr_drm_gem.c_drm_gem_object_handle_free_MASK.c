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
struct drm_gem_object {int /*<<< orphan*/  refcount; int /*<<< orphan*/  name; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  object_name_lock; int /*<<< orphan*/  object_name_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  drm_gem_object_ref_bug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;

	/* Remove any name for this object */
	FUNC2(&dev->object_name_lock);
	if (obj->name) {
		FUNC0(&dev->object_name_idr, obj->name);
		obj->name = 0;
		FUNC3(&dev->object_name_lock);
		/*
		 * The object name held a reference to this object, drop
		 * that now.
		*
		* This cannot be the last reference, since the handle holds one too.
		 */
		FUNC1(&obj->refcount, drm_gem_object_ref_bug);
	} else
		FUNC3(&dev->object_name_lock);

}