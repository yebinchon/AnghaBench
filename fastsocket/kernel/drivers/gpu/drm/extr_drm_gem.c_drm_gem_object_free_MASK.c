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
struct kref {int dummy; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {TYPE_1__* driver; int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* gem_free_object ) (struct drm_gem_object*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 

void
FUNC3(struct kref *kref)
{
	struct drm_gem_object *obj = (struct drm_gem_object *) kref;
	struct drm_device *dev = obj->dev;

	FUNC0(!FUNC1(&dev->struct_mutex));

	if (dev->driver->gem_free_object != NULL)
		dev->driver->gem_free_object(obj);
}