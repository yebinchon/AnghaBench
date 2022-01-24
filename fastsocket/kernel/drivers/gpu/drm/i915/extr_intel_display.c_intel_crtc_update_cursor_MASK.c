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
typedef  int u32 ;
struct intel_crtc {int pipe; int cursor_x; int cursor_y; int cursor_addr; scalar_t__ cursor_width; scalar_t__ cursor_height; int /*<<< orphan*/  cursor_visible; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {TYPE_1__* fb; scalar_t__ enabled; struct drm_device* dev; } ;
struct TYPE_2__ {scalar_t__ height; scalar_t__ width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CURSOR_POS_SIGN ; 
 int CURSOR_X_SHIFT ; 
 int CURSOR_Y_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_crtc*,int) ; 
 struct intel_crtc* FUNC10 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC11(struct drm_crtc *crtc,
				     bool on)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC10(crtc);
	int pipe = intel_crtc->pipe;
	int x = intel_crtc->cursor_x;
	int y = intel_crtc->cursor_y;
	u32 base, pos;
	bool visible;

	pos = 0;

	if (on && crtc->enabled && crtc->fb) {
		base = intel_crtc->cursor_addr;
		if (x > (int) crtc->fb->width)
			base = 0;

		if (y > (int) crtc->fb->height)
			base = 0;
	} else
		base = 0;

	if (x < 0) {
		if (x + intel_crtc->cursor_width < 0)
			base = 0;

		pos |= CURSOR_POS_SIGN << CURSOR_X_SHIFT;
		x = -x;
	}
	pos |= x << CURSOR_X_SHIFT;

	if (y < 0) {
		if (y + intel_crtc->cursor_height < 0)
			base = 0;

		pos |= CURSOR_POS_SIGN << CURSOR_Y_SHIFT;
		y = -y;
	}
	pos |= y << CURSOR_Y_SHIFT;

	visible = base != 0;
	if (!visible && !intel_crtc->cursor_visible)
		return;

	if (FUNC6(dev) || FUNC4(dev)) {
		FUNC2(FUNC1(pipe), pos);
		FUNC9(crtc, base);
	} else {
		FUNC2(FUNC0(pipe), pos);
		if (FUNC3(dev) || FUNC5(dev))
			FUNC7(crtc, base);
		else
			FUNC8(crtc, base);
	}
}