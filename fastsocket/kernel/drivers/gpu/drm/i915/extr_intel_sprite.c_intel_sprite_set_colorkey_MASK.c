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
struct intel_plane {int (* update_colorkey ) (struct drm_plane*,struct drm_intel_sprite_colorkey*) ;} ;
struct drm_plane {int dummy; } ;
struct drm_mode_object {int dummy; } ;
struct drm_intel_sprite_colorkey {int flags; int /*<<< orphan*/  plane_id; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_PLANE ; 
 int EINVAL ; 
 int ENODEV ; 
 int I915_SET_COLORKEY_DESTINATION ; 
 int I915_SET_COLORKEY_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct drm_mode_object* FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 struct drm_plane* FUNC4 (struct drm_mode_object*) ; 
 int FUNC5 (struct drm_plane*,struct drm_intel_sprite_colorkey*) ; 
 struct intel_plane* FUNC6 (struct drm_plane*) ; 

int FUNC7(struct drm_device *dev, void *data,
			      struct drm_file *file_priv)
{
	struct drm_intel_sprite_colorkey *set = data;
	struct drm_mode_object *obj;
	struct drm_plane *plane;
	struct intel_plane *intel_plane;
	int ret = 0;

	if (!FUNC0(dev, DRIVER_MODESET))
		return -ENODEV;

	/* Make sure we don't try to enable both src & dest simultaneously */
	if ((set->flags & (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE)) == (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE))
		return -EINVAL;

	FUNC2(dev);

	obj = FUNC1(dev, set->plane_id, DRM_MODE_OBJECT_PLANE);
	if (!obj) {
		ret = -EINVAL;
		goto out_unlock;
	}

	plane = FUNC4(obj);
	intel_plane = FUNC6(plane);
	ret = intel_plane->update_colorkey(plane, set);

out_unlock:
	FUNC3(dev);
	return ret;
}