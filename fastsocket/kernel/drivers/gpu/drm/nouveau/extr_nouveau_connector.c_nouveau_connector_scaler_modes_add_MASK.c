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
struct nouveau_connector {struct drm_display_mode* native_mode; } ;
struct moderec {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ vdisplay; int /*<<< orphan*/  type; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_TYPE_DRIVER ; 
 struct drm_display_mode* FUNC0 (struct drm_device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*) ; 
 struct nouveau_connector* FUNC3 (struct drm_connector*) ; 
 struct moderec* scaler_modes ; 

__attribute__((used)) static int
FUNC4(struct drm_connector *connector)
{
	struct nouveau_connector *nv_connector = FUNC3(connector);
	struct drm_display_mode *native = nv_connector->native_mode, *m;
	struct drm_device *dev = connector->dev;
	struct moderec *mode = &scaler_modes[0];
	int modes = 0;

	if (!native)
		return 0;

	while (mode->hdisplay) {
		if (mode->hdisplay <= native->hdisplay &&
		    mode->vdisplay <= native->vdisplay) {
			m = FUNC0(dev, mode->hdisplay, mode->vdisplay,
					 FUNC2(native), false,
					 false, false);
			if (!m)
				continue;

			m->type |= DRM_MODE_TYPE_DRIVER;

			FUNC1(connector, m);
			modes++;
		}

		mode++;
	}

	return modes;
}