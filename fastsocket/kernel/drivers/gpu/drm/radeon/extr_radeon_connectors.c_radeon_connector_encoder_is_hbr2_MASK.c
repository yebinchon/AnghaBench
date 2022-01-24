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
struct radeon_encoder {int caps; } ;
struct drm_mode_object {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {scalar_t__* encoder_ids; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ATOM_ENCODER_CAP_RECORD_HBR2 ; 
 int DRM_CONNECTOR_MAX_ENCODER ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_ENCODER ; 
 struct drm_mode_object* FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct drm_encoder* FUNC1 (struct drm_mode_object*) ; 
 struct radeon_encoder* FUNC2 (struct drm_encoder*) ; 

bool FUNC3(struct drm_connector *connector)
{
	struct drm_mode_object *obj;
	struct drm_encoder *encoder;
	struct radeon_encoder *radeon_encoder;
	int i;
	bool found = false;

	for (i = 0; i < DRM_CONNECTOR_MAX_ENCODER; i++) {
		if (connector->encoder_ids[i] == 0)
			break;

		obj = FUNC0(connector->dev, connector->encoder_ids[i], DRM_MODE_OBJECT_ENCODER);
		if (!obj)
			continue;

		encoder = FUNC1(obj);
		radeon_encoder = FUNC2(encoder);
		if (radeon_encoder->caps & ATOM_ENCODER_CAP_RECORD_HBR2)
			found = true;
	}

	return found;
}