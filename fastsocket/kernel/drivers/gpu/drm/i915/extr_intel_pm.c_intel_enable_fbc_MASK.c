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
struct intel_fbc_work {unsigned long interval; int /*<<< orphan*/  work; int /*<<< orphan*/  fb; struct drm_crtc* crtc; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_fbc ) (struct drm_crtc*,unsigned long) ;} ;
struct drm_i915_private {struct intel_fbc_work* fbc_work; TYPE_1__ display; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int /*<<< orphan*/  fb; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  intel_fbc_work_fn ; 
 struct intel_fbc_work* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*,unsigned long) ; 

void FUNC7(struct drm_crtc *crtc, unsigned long interval)
{
	struct intel_fbc_work *work;
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;

	if (!dev_priv->display.enable_fbc)
		return;

	FUNC2(dev_priv);

	work = FUNC3(sizeof *work, GFP_KERNEL);
	if (work == NULL) {
		dev_priv->display.enable_fbc(crtc, interval);
		return;
	}

	work->crtc = crtc;
	work->fb = crtc->fb;
	work->interval = interval;
	FUNC1(&work->work, intel_fbc_work_fn);

	dev_priv->fbc_work = work;

	FUNC0("scheduling delayed FBC enable\n");

	/* Delay the actual enabling to let pageflipping cease and the
	 * display to settle before starting the compression. Note that
	 * this delay also serves a second purpose: it allows for a
	 * vblank to pass after disabling the FBC before we attempt
	 * to modify the control registers.
	 *
	 * A more complicated solution would involve tracking vblanks
	 * following the termination of the page-flipping sequence
	 * and indeed performing the enable as a co-routine and not
	 * waiting synchronously upon the vblank.
	 */
	FUNC5(&work->work, FUNC4(50));
}