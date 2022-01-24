#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct drm_crtc* crtc; } ;
struct intel_encoder {int connectors_active; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {int dpms; struct drm_device* dev; } ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int DRM_MODE_DPMS_OFF ; 
 int DRM_MODE_DPMS_ON ; 
 TYPE_2__* FUNC0 (struct drm_device*) ; 
 struct intel_encoder* FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_encoder*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

__attribute__((used)) static void FUNC5(struct drm_connector *connector, int mode)
{
	struct drm_device *dev = connector->dev;
	struct intel_encoder *encoder = FUNC1(connector);
	struct drm_crtc *crtc;
	int old_dpms;

	/* PCH platforms and VLV only support on/off. */
	if (FUNC0(dev)->gen >= 5 && mode != DRM_MODE_DPMS_ON)
		mode = DRM_MODE_DPMS_OFF;

	if (mode == connector->dpms)
		return;

	old_dpms = connector->dpms;
	connector->dpms = mode;

	/* Only need to change hw state when actually enabled */
	crtc = encoder->base.crtc;
	if (!crtc) {
		encoder->connectors_active = false;
		return;
	}

	/* We need the pipe to run for anything but OFF. */
	if (mode == DRM_MODE_DPMS_OFF)
		encoder->connectors_active = false;
	else
		encoder->connectors_active = true;

	if (mode < old_dpms) {
		/* From off to on, enable the pipe first. */
		FUNC3(crtc);

		FUNC2(encoder, mode);
	} else {
		FUNC2(encoder, mode);

		FUNC3(crtc);
	}

	FUNC4(connector->dev);
}