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
struct intel_crtc {int primary_disabled; int /*<<< orphan*/  plane; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int DISPLAY_PLANE_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 struct intel_crtc* FUNC4 (struct drm_crtc*) ; 

__attribute__((used)) static void
FUNC5(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC4(crtc);
	int reg = FUNC0(intel_crtc->plane);

	if (intel_crtc->primary_disabled)
		return;

	FUNC2(reg, FUNC1(reg) & ~DISPLAY_PLANE_ENABLE);

	intel_crtc->primary_disabled = true;
	FUNC3(dev);
}