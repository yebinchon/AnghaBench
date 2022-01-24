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
struct nouveau_encoder {TYPE_1__* dcb; } ;
struct drm_mode_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int* encoder_ids; struct drm_device* dev; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int DCB_OUTPUT_ANY ; 
 int DRM_CONNECTOR_MAX_ENCODER ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_ENCODER ; 
 struct drm_mode_object* FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 struct nouveau_encoder* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_mode_object*) ; 

struct nouveau_encoder *
FUNC3(struct drm_connector *connector, int type)
{
	struct drm_device *dev = connector->dev;
	struct nouveau_encoder *nv_encoder;
	struct drm_mode_object *obj;
	int i, id;

	for (i = 0; i < DRM_CONNECTOR_MAX_ENCODER; i++) {
		id = connector->encoder_ids[i];
		if (!id)
			break;

		obj = FUNC0(dev, id, DRM_MODE_OBJECT_ENCODER);
		if (!obj)
			continue;
		nv_encoder = FUNC1(FUNC2(obj));

		if (type == DCB_OUTPUT_ANY || nv_encoder->dcb->type == type)
			return nv_encoder;
	}

	return NULL;
}