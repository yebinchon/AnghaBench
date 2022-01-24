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
typedef  int u16 ;
struct radeon_encoder {int encoder_id; } ;
struct drm_mode_object {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {scalar_t__* encoder_ids; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_CONNECTOR_MAX_ENCODER ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_ENCODER ; 
 int ENCODER_OBJECT_ID_NONE ; 
#define  ENCODER_OBJECT_ID_NUTMEG 129 
#define  ENCODER_OBJECT_ID_TRAVIS 128 
 struct drm_mode_object* FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct drm_encoder* FUNC1 (struct drm_mode_object*) ; 
 struct radeon_encoder* FUNC2 (struct drm_encoder*) ; 

u16 FUNC3(struct drm_connector *connector)
{
	struct drm_mode_object *obj;
	struct drm_encoder *encoder;
	struct radeon_encoder *radeon_encoder;
	int i;

	for (i = 0; i < DRM_CONNECTOR_MAX_ENCODER; i++) {
		if (connector->encoder_ids[i] == 0)
			break;

		obj = FUNC0(connector->dev, connector->encoder_ids[i], DRM_MODE_OBJECT_ENCODER);
		if (!obj)
			continue;

		encoder = FUNC1(obj);
		radeon_encoder = FUNC2(encoder);

		switch (radeon_encoder->encoder_id) {
		case ENCODER_OBJECT_ID_TRAVIS:
		case ENCODER_OBJECT_ID_NUTMEG:
			return radeon_encoder->encoder_id;
		default:
			break;
		}
	}

	return ENCODER_OBJECT_ID_NONE;
}