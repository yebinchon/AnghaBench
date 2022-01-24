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
struct sil164_priv {scalar_t__ duallink_slave; } ;
struct drm_encoder {TYPE_2__* crtc; } ;
struct TYPE_3__ {int clock; } ;
struct TYPE_4__ {TYPE_1__ mode; } ;

/* Variables and functions */
 int DRM_MODE_DPMS_ON ; 
 scalar_t__ FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 struct sil164_priv* FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC3(struct drm_encoder *encoder, int mode)
{
	struct sil164_priv *priv = FUNC2(encoder);
	bool on = (mode == DRM_MODE_DPMS_ON);
	bool duallink = (on && encoder->crtc->mode.clock > 165000);

	FUNC1(FUNC0(encoder), on);

	if (priv->duallink_slave)
		FUNC1(priv->duallink_slave, duallink);
}