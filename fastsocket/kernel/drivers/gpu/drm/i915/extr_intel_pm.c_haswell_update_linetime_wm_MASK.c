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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int crtc_hdisplay; int clock; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PIPE_WM_LINETIME_MASK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct drm_device *dev, int pipe,
				 struct drm_display_mode *mode)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 temp;

	temp = FUNC0(FUNC2(pipe));
	temp &= ~PIPE_WM_LINETIME_MASK;

	/* The WM are computed with base on how long it takes to fill a single
	 * row at the given clock rate, multiplied by 8.
	 * */
	temp |= FUNC3(
		((mode->crtc_hdisplay * 1000) / mode->clock) * 8);

	/* IPS watermarks are only used by pipe A, and are ignored by
	 * pipes B and C.  They are calculated similarly to the common
	 * linetime values, except that we are using CD clock frequency
	 * in MHz instead of pixel rate for the division.
	 *
	 * This is a placeholder for the IPS watermark calculation code.
	 */

	FUNC1(FUNC2(pipe), temp);
}