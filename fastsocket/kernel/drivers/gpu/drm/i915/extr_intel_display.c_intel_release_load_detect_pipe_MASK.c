#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intel_load_detect_pipe {scalar_t__ dpms_mode; scalar_t__ release_fb; scalar_t__ load_detect_temp; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct drm_encoder {TYPE_2__ base; struct drm_crtc* crtc; } ;
struct intel_encoder {int /*<<< orphan*/ * new_crtc; struct drm_encoder base; } ;
struct drm_crtc {int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct drm_connector {TYPE_3__* funcs; TYPE_1__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/ * new_encoder; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* dpms ) (struct drm_connector*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DRM_MODE_DPMS_ON ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*) ; 
 struct intel_encoder* FUNC5 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_connector*,scalar_t__) ; 
 TYPE_4__* FUNC9 (struct drm_connector*) ; 

void FUNC10(struct drm_connector *connector,
				    struct intel_load_detect_pipe *old)
{
	struct intel_encoder *intel_encoder =
		FUNC5(connector);
	struct drm_encoder *encoder = &intel_encoder->base;
	struct drm_crtc *crtc = encoder->crtc;

	FUNC0("[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
		      connector->base.id, FUNC3(connector),
		      encoder->base.id, FUNC4(encoder));

	if (old->load_detect_temp) {
		FUNC9(connector)->new_encoder = NULL;
		intel_encoder->new_crtc = NULL;
		FUNC6(crtc, NULL, 0, 0, NULL);

		if (old->release_fb) {
			FUNC2(old->release_fb);
			FUNC1(old->release_fb);
		}

		FUNC7(&crtc->mutex);
		return;
	}

	/* Switch crtc and encoder back off if necessary */
	if (old->dpms_mode != DRM_MODE_DPMS_ON)
		connector->funcs->dpms(connector, old->dpms_mode);

	FUNC7(&crtc->mutex);
}