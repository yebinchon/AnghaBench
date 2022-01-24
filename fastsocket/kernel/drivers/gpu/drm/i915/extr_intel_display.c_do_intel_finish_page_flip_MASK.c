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
struct intel_unpin_work {int /*<<< orphan*/  pending_flip_obj; int /*<<< orphan*/  work; struct drm_i915_gem_object* old_fb_obj; scalar_t__ event; int /*<<< orphan*/  pending; } ;
struct intel_crtc {int /*<<< orphan*/  plane; int /*<<< orphan*/  pipe; struct intel_unpin_work* unpin_work; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; TYPE_1__* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wq; int /*<<< orphan*/  pending_flip_queue; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 scalar_t__ INTEL_FLIP_COMPLETE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct intel_crtc* FUNC7 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct drm_device *dev,
				      struct drm_crtc *crtc)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC7(crtc);
	struct intel_unpin_work *work;
	struct drm_i915_gem_object *obj;
	unsigned long flags;

	/* Ignore early vblank irqs */
	if (intel_crtc == NULL)
		return;

	FUNC5(&dev->event_lock, flags);
	work = intel_crtc->unpin_work;

	/* Ensure we don't miss a work->pending update ... */
	FUNC4();

	if (work == NULL || FUNC0(&work->pending) < INTEL_FLIP_COMPLETE) {
		FUNC6(&dev->event_lock, flags);
		return;
	}

	/* and that the unpin work is consistent wrt ->pending. */
	FUNC4();

	intel_crtc->unpin_work = NULL;

	if (work->event)
		FUNC1(dev, intel_crtc->pipe, work->event);

	FUNC2(dev, intel_crtc->pipe);

	FUNC6(&dev->event_lock, flags);

	obj = work->old_fb_obj;

	FUNC9(&dev_priv->pending_flip_queue);

	FUNC3(dev_priv->wq, &work->work);

	FUNC8(intel_crtc->plane, work->pending_flip_obj);
}