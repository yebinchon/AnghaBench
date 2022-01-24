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
struct drm_gem_object {int /*<<< orphan*/  filp; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ (* gem_init_object ) (struct drm_gem_object*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct drm_device*,struct drm_gem_object*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_gem_object*) ; 

struct drm_gem_object *
FUNC5(struct drm_device *dev, size_t size)
{
	struct drm_gem_object *obj;

	obj = FUNC3(sizeof(*obj), GFP_KERNEL);
	if (!obj)
		goto free;

	if (FUNC0(dev, obj, size) != 0)
		goto free;

	if (dev->driver->gem_init_object != NULL &&
	    dev->driver->gem_init_object(obj) != 0) {
		goto fput;
	}
	return obj;
fput:
	/* Object_init mangles the global counters - readjust them. */
	FUNC1(obj->filp);
free:
	FUNC2(obj);
	return NULL;
}