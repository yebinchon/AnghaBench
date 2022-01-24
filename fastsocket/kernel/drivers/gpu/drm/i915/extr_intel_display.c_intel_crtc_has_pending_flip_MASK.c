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
struct intel_crtc {scalar_t__ reset_counter; int /*<<< orphan*/ * unpin_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  reset_counter; } ;
struct drm_i915_private {TYPE_1__ gpu_error; } ;
struct drm_device {int /*<<< orphan*/  event_lock; struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct intel_crtc* FUNC4 (struct drm_crtc*) ; 

__attribute__((used)) static bool FUNC5(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC4(crtc);
	unsigned long flags;
	bool pending;

	if (FUNC1(&dev_priv->gpu_error) ||
	    intel_crtc->reset_counter != FUNC0(&dev_priv->gpu_error.reset_counter))
		return false;

	FUNC2(&dev->event_lock, flags);
	pending = FUNC4(crtc)->unpin_work != NULL;
	FUNC3(&dev->event_lock, flags);

	return pending;
}