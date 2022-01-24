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
struct drm_encoder_helper_funcs {int /*<<< orphan*/  (* dpms ) (struct drm_encoder*,int /*<<< orphan*/ ) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,int) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	int head = FUNC0(encoder->crtc)->index;
	struct drm_encoder_helper_funcs *helper = encoder->helper_private;

	helper->dpms(encoder, DRM_MODE_DPMS_OFF);

	FUNC1(dev, head);

	if (FUNC3(dev))
		FUNC2(dev, head ^ 1, false);

	FUNC2(dev, head, true);
}