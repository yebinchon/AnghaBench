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
struct TYPE_6__ {struct drm_crtc* crtc; } ;
struct intel_encoder {int (* get_hw_state ) (struct intel_encoder*,int*) ;TYPE_2__ base; int /*<<< orphan*/  connectors_active; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {scalar_t__ dpms; TYPE_2__* encoder; TYPE_1__ base; } ;
struct intel_connector {TYPE_4__ base; struct intel_encoder* encoder; scalar_t__ (* get_hw_state ) (struct intel_connector*) ;} ;
struct drm_crtc {int /*<<< orphan*/  enabled; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_7__ {int pipe; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (struct intel_connector*) ; 
 int FUNC5 (struct intel_encoder*,int*) ; 
 TYPE_3__* FUNC6 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC7(struct intel_connector *connector)
{
	if (connector->get_hw_state(connector)) {
		struct intel_encoder *encoder = connector->encoder;
		struct drm_crtc *crtc;
		bool encoder_enabled;
		enum pipe pipe;

		FUNC0("[CONNECTOR:%d:%s]\n",
			      connector->base.base.id,
			      FUNC3(&connector->base));

		FUNC1(connector->base.dpms == DRM_MODE_DPMS_OFF,
		     "wrong connector dpms state\n");
		FUNC1(connector->base.encoder != &encoder->base,
		     "active connector not linked to encoder\n");
		FUNC1(!encoder->connectors_active,
		     "encoder->connectors_active not set\n");

		encoder_enabled = encoder->get_hw_state(encoder, &pipe);
		FUNC1(!encoder_enabled, "encoder not enabled\n");
		if (FUNC2(!encoder->base.crtc))
			return;

		crtc = encoder->base.crtc;

		FUNC1(!crtc->enabled, "crtc not enabled\n");
		FUNC1(!FUNC6(crtc)->active, "crtc not active\n");
		FUNC1(pipe != FUNC6(crtc)->pipe,
		     "encoder active on the wrong pipe\n");
	}
}