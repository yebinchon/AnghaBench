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
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  idr_mutex; int /*<<< orphan*/  crtc_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 scalar_t__ DRM_MODE_OBJECT_FB ; 
 struct drm_mode_object* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_framebuffer* FUNC3 (struct drm_mode_object*) ; 

__attribute__((used)) static struct drm_framebuffer *FUNC4(struct drm_device *dev,
							uint32_t id)
{
	struct drm_mode_object *obj = NULL;
	struct drm_framebuffer *fb;

	FUNC1(&dev->mode_config.idr_mutex);
	obj = FUNC0(&dev->mode_config.crtc_idr, id);
	if (!obj || (obj->type != DRM_MODE_OBJECT_FB) || (obj->id != id))
		fb = NULL;
	else
		fb = FUNC3(obj);
	FUNC2(&dev->mode_config.idr_mutex);

	return fb;
}