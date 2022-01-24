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
struct radeon_device {scalar_t__ is_atom_bios; } ;
struct drm_mode_object {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector_helper_funcs {struct drm_encoder* (* best_encoder ) (struct drm_connector*) ;} ;
struct drm_connector {scalar_t__* encoder_ids; struct drm_device* dev; struct drm_connector_helper_funcs* helper_private; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int DRM_CONNECTOR_MAX_ENCODER ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_ENCODER ; 
 int connector_status_connected ; 
 struct drm_mode_object* FUNC0 (struct drm_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct drm_encoder* FUNC1 (struct drm_mode_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct drm_encoder*,int) ; 
 struct drm_encoder* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static void
FUNC5(struct drm_connector *connector, enum drm_connector_status status)
{
	struct drm_device *dev = connector->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct drm_encoder *best_encoder = NULL;
	struct drm_encoder *encoder = NULL;
	struct drm_connector_helper_funcs *connector_funcs = connector->helper_private;
	struct drm_mode_object *obj;
	bool connected;
	int i;

	best_encoder = connector_funcs->best_encoder(connector);

	for (i = 0; i < DRM_CONNECTOR_MAX_ENCODER; i++) {
		if (connector->encoder_ids[i] == 0)
			break;

		obj = FUNC0(connector->dev,
					   connector->encoder_ids[i],
					   DRM_MODE_OBJECT_ENCODER);
		if (!obj)
			continue;

		encoder = FUNC1(obj);

		if ((encoder == best_encoder) && (status == connector_status_connected))
			connected = true;
		else
			connected = false;

		if (rdev->is_atom_bios)
			FUNC2(connector, encoder, connected);
		else
			FUNC3(connector, encoder, connected);

	}
}