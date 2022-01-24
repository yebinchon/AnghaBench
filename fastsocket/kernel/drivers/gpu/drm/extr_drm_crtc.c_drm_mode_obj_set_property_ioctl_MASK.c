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
struct drm_property {int dummy; } ;
struct drm_mode_object {int type; TYPE_1__* properties; } ;
struct drm_mode_obj_set_property {scalar_t__ obj_id; scalar_t__ prop_id; int /*<<< orphan*/  value; int /*<<< orphan*/  obj_type; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int count; scalar_t__* ids; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
#define  DRM_MODE_OBJECT_CONNECTOR 130 
#define  DRM_MODE_OBJECT_CRTC 129 
#define  DRM_MODE_OBJECT_PLANE 128 
 int /*<<< orphan*/  DRM_MODE_OBJECT_PROPERTY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_mode_object*,struct drm_property*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_mode_object*,struct drm_property*,int /*<<< orphan*/ ) ; 
 struct drm_mode_object* FUNC3 (struct drm_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_mode_object*,struct drm_property*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_property*,int /*<<< orphan*/ ) ; 
 struct drm_property* FUNC8 (struct drm_mode_object*) ; 

int FUNC9(struct drm_device *dev, void *data,
				    struct drm_file *file_priv)
{
	struct drm_mode_obj_set_property *arg = data;
	struct drm_mode_object *arg_obj;
	struct drm_mode_object *prop_obj;
	struct drm_property *property;
	int ret = -EINVAL;
	int i;

	if (!FUNC0(dev, DRIVER_MODESET))
		return -EINVAL;

	FUNC5(dev);

	arg_obj = FUNC3(dev, arg->obj_id, arg->obj_type);
	if (!arg_obj)
		goto out;
	if (!arg_obj->properties)
		goto out;

	for (i = 0; i < arg_obj->properties->count; i++)
		if (arg_obj->properties->ids[i] == arg->prop_id)
			break;

	if (i == arg_obj->properties->count)
		goto out;

	prop_obj = FUNC3(dev, arg->prop_id,
					DRM_MODE_OBJECT_PROPERTY);
	if (!prop_obj)
		goto out;
	property = FUNC8(prop_obj);

	if (!FUNC7(property, arg->value))
		goto out;

	switch (arg_obj->type) {
	case DRM_MODE_OBJECT_CONNECTOR:
		ret = FUNC1(arg_obj, property,
						      arg->value);
		break;
	case DRM_MODE_OBJECT_CRTC:
		ret = FUNC2(arg_obj, property, arg->value);
		break;
	case DRM_MODE_OBJECT_PLANE:
		ret = FUNC4(arg_obj, property, arg->value);
		break;
	}

out:
	FUNC6(dev);
	return ret;
}