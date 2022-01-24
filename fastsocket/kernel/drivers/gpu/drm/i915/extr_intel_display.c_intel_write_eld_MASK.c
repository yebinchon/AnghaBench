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
struct TYPE_7__ {int /*<<< orphan*/  (* write_eld ) (struct drm_connector*,struct drm_crtc*) ;} ;
struct drm_i915_private {TYPE_3__ display; } ;
struct drm_encoder {struct drm_device* dev; struct drm_crtc* crtc; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct drm_connector {int* eld; TYPE_4__* encoder; TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 struct drm_connector* FUNC4 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,struct drm_crtc*) ; 

void FUNC6(struct drm_encoder *encoder,
		     struct drm_display_mode *mode)
{
	struct drm_crtc *crtc = encoder->crtc;
	struct drm_connector *connector;
	struct drm_device *dev = encoder->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;

	connector = FUNC4(encoder, mode);
	if (!connector)
		return;

	FUNC0("ELD on [CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
			 connector->base.id,
			 FUNC2(connector),
			 connector->encoder->base.id,
			 FUNC3(connector->encoder));

	connector->eld[6] = FUNC1(connector, mode) / 2;

	if (dev_priv->display.write_eld)
		dev_priv->display.write_eld(connector, crtc);
}