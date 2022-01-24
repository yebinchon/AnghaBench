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
typedef  scalar_t__ uint32_t ;
struct drm_mode_object {scalar_t__ type; scalar_t__ id; } ;
struct TYPE_2__ {int /*<<< orphan*/  idr_mutex; int /*<<< orphan*/  crtc_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 scalar_t__ DRM_MODE_OBJECT_FB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct drm_mode_object* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct drm_mode_object *FUNC4(struct drm_device *dev,
		uint32_t id, uint32_t type)
{
	struct drm_mode_object *obj = NULL;

	/* Framebuffers are reference counted and need their own lookup
	 * function.*/
	FUNC0(type == DRM_MODE_OBJECT_FB);

	FUNC2(&dev->mode_config.idr_mutex);
	obj = FUNC1(&dev->mode_config.crtc_idr, id);
	if (!obj || (obj->type != type) || (obj->id != id))
		obj = NULL;
	FUNC3(&dev->mode_config.idr_mutex);

	return obj;
}