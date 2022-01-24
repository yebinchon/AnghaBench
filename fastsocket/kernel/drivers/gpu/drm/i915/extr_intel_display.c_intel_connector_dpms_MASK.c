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
struct TYPE_2__ {scalar_t__ crtc; } ;
struct intel_encoder {int connectors_active; TYPE_1__ base; } ;
struct drm_connector {int dpms; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_MODE_DPMS_OFF ; 
 int DRM_MODE_DPMS_ON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct intel_encoder* FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_encoder*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct drm_connector *connector, int mode)
{
	struct intel_encoder *encoder = FUNC1(connector);

	/* All the simple cases only support two dpms states. */
	if (mode != DRM_MODE_DPMS_ON)
		mode = DRM_MODE_DPMS_OFF;

	if (mode == connector->dpms)
		return;

	connector->dpms = mode;

	/* Only need to change hw state when actually enabled */
	if (encoder->base.crtc)
		FUNC2(encoder, mode);
	else
		FUNC0(encoder->connectors_active != false);

	FUNC3(connector->dev);
}