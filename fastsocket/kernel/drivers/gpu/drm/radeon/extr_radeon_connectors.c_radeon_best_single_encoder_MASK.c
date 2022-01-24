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
struct drm_mode_object {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int* encoder_ids; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_OBJECT_ENCODER ; 
 struct drm_mode_object* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct drm_encoder* FUNC1 (struct drm_mode_object*) ; 

__attribute__((used)) static struct drm_encoder *FUNC2(struct drm_connector *connector)
{
	int enc_id = connector->encoder_ids[0];
	struct drm_mode_object *obj;
	struct drm_encoder *encoder;

	/* pick the encoder ids */
	if (enc_id) {
		obj = FUNC0(connector->dev, enc_id, DRM_MODE_OBJECT_ENCODER);
		if (!obj)
			return NULL;
		encoder = FUNC1(obj);
		return encoder;
	}
	return NULL;
}