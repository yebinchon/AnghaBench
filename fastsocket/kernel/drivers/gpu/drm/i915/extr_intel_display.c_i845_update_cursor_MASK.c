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
typedef  scalar_t__ u32 ;
struct intel_crtc {int cursor_visible; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ CURSOR_ENABLE ; 
 scalar_t__ CURSOR_FORMAT_ARGB ; 
 scalar_t__ CURSOR_FORMAT_MASK ; 
 scalar_t__ CURSOR_GAMMA_ENABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  _CURABASE ; 
 int /*<<< orphan*/  _CURACNTR ; 
 struct intel_crtc* FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc, u32 base)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC2(crtc);
	bool visible = base != 0;
	u32 cntl;

	if (intel_crtc->cursor_visible == visible)
		return;

	cntl = FUNC0(_CURACNTR);
	if (visible) {
		/* On these chipsets we can only modify the base whilst
		 * the cursor is disabled.
		 */
		FUNC1(_CURABASE, base);

		cntl &= ~(CURSOR_FORMAT_MASK);
		/* XXX width must be 64, stride 256 => 0x00 << 28 */
		cntl |= CURSOR_ENABLE |
			CURSOR_GAMMA_ENABLE |
			CURSOR_FORMAT_ARGB;
	} else
		cntl &= ~(CURSOR_ENABLE | CURSOR_GAMMA_ENABLE);
	FUNC1(_CURACNTR, cntl);

	intel_crtc->cursor_visible = visible;
}