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
typedef  int /*<<< orphan*/  u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int /*<<< orphan*/  table_lock; int /*<<< orphan*/  object_idr; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct drm_gem_object *
FUNC4(struct drm_device *dev, struct drm_file *filp,
		      u32 handle)
{
	struct drm_gem_object *obj;

	FUNC2(&filp->table_lock);

	/* Check if we currently have a reference on the object */
	obj = FUNC1(&filp->object_idr, handle);
	if (obj == NULL) {
		FUNC3(&filp->table_lock);
		return NULL;
	}

	FUNC0(obj);

	FUNC3(&filp->table_lock);

	return obj;
}