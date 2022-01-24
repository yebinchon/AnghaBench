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
struct intel_unpin_work {int enable_stall_check; struct drm_i915_gem_object* old_fb_obj; struct drm_i915_gem_object* pending_flip_obj; int /*<<< orphan*/  work; struct drm_crtc* crtc; struct drm_pending_vblank_event* event; } ;
struct intel_crtc {int reset_counter; int /*<<< orphan*/  pipe; struct intel_unpin_work* unpin_work; int /*<<< orphan*/  unpin_work_count; int /*<<< orphan*/  plane; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct TYPE_6__ {int (* queue_flip ) (struct drm_device*,struct drm_crtc*,struct drm_framebuffer*,struct drm_i915_gem_object*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  reset_counter; } ;
struct drm_i915_private {TYPE_2__ display; TYPE_1__ gpu_error; int /*<<< orphan*/  wq; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; } ;
struct drm_framebuffer {scalar_t__ pixel_format; scalar_t__* offsets; scalar_t__* pitches; } ;
struct drm_device {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  struct_mutex; struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_framebuffer* fb; struct drm_device* dev; } ;
struct TYPE_8__ {int gen; } ;
struct TYPE_7__ {struct drm_i915_gem_object* obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  intel_unpin_work_fn ; 
 int /*<<< orphan*/  FUNC14 (struct intel_unpin_work*) ; 
 struct intel_unpin_work* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC19 (struct drm_device*,struct drm_crtc*,struct drm_framebuffer*,struct drm_i915_gem_object*) ; 
 struct intel_crtc* FUNC20 (struct drm_crtc*) ; 
 TYPE_3__* FUNC21 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct drm_i915_gem_object*) ; 

__attribute__((used)) static int FUNC23(struct drm_crtc *crtc,
				struct drm_framebuffer *fb,
				struct drm_pending_vblank_event *event)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct drm_framebuffer *old_fb = crtc->fb;
	struct drm_i915_gem_object *obj = FUNC21(fb)->obj;
	struct intel_crtc *intel_crtc = FUNC20(crtc);
	struct intel_unpin_work *work;
	unsigned long flags;
	int ret;

	/* Can't change pixel format via MI display flips. */
	if (fb->pixel_format != crtc->fb->pixel_format)
		return -EINVAL;

	/*
	 * TILEOFF/LINOFF registers can't be changed via MI display flips.
	 * Note that pitch changes could also affect these register.
	 */
	if (FUNC2(dev)->gen > 3 &&
	    (fb->offsets[0] != crtc->fb->offsets[0] ||
	     fb->pitches[0] != crtc->fb->pitches[0]))
		return -EINVAL;

	work = FUNC15(sizeof *work, GFP_KERNEL);
	if (work == NULL)
		return -ENOMEM;

	work->event = event;
	work->crtc = crtc;
	work->old_fb_obj = FUNC21(old_fb)->obj;
	FUNC1(&work->work, intel_unpin_work_fn);

	ret = FUNC8(dev, intel_crtc->pipe);
	if (ret)
		goto free_work;

	/* We borrow the event spin lock for protecting unpin_work */
	FUNC17(&dev->event_lock, flags);
	if (intel_crtc->unpin_work) {
		FUNC18(&dev->event_lock, flags);
		FUNC14(work);
		FUNC9(dev, intel_crtc->pipe);

		FUNC0("flip queue: crtc already busy\n");
		return -EBUSY;
	}
	intel_crtc->unpin_work = work;
	FUNC18(&dev->event_lock, flags);

	if (FUNC5(&intel_crtc->unpin_work_count) >= 2)
		FUNC10(dev_priv->wq);

	ret = FUNC11(dev);
	if (ret)
		goto cleanup;

	/* Reference the objects for the scheduled work. */
	FUNC6(&work->old_fb_obj->base);
	FUNC6(&obj->base);

	crtc->fb = fb;

	work->pending_flip_obj = obj;

	work->enable_stall_check = true;

	FUNC4(&intel_crtc->unpin_work_count);
	intel_crtc->reset_counter = FUNC5(&dev_priv->gpu_error.reset_counter);

	ret = dev_priv->display.queue_flip(dev, crtc, fb, obj);
	if (ret)
		goto cleanup_pending;

	FUNC12(dev);
	FUNC13(obj);
	FUNC16(&dev->struct_mutex);

	FUNC22(intel_crtc->plane, obj);

	return 0;

cleanup_pending:
	FUNC3(&intel_crtc->unpin_work_count);
	crtc->fb = old_fb;
	FUNC7(&work->old_fb_obj->base);
	FUNC7(&obj->base);
	FUNC16(&dev->struct_mutex);

cleanup:
	FUNC17(&dev->event_lock, flags);
	intel_crtc->unpin_work = NULL;
	FUNC18(&dev->event_lock, flags);

	FUNC9(dev, intel_crtc->pipe);
free_work:
	FUNC14(work);

	return ret;
}