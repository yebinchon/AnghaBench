#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct radeon_unpin_work {int /*<<< orphan*/  work; int /*<<< orphan*/  crtc_id; int /*<<< orphan*/  rdev; scalar_t__ fence; struct drm_pending_vblank_event* event; int /*<<< orphan*/  new_crtc_base; } ;
struct TYPE_12__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {TYPE_7__* ddev; TYPE_3__ mode_info; } ;
struct TYPE_10__ {int crtc_vdisplay; } ;
struct TYPE_11__ {TYPE_1__ hwmode; } ;
struct radeon_crtc {int deferred_flip_completion; int /*<<< orphan*/  crtc_id; struct radeon_unpin_work* unpin_work; TYPE_2__ base; } ;
struct TYPE_15__ {TYPE_5__* file_priv; int /*<<< orphan*/  link; } ;
struct TYPE_13__ {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; int /*<<< orphan*/  sequence; } ;
struct drm_pending_vblank_event {TYPE_6__ base; TYPE_4__ event; } ;
struct TYPE_16__ {int /*<<< orphan*/  event_lock; } ;
struct TYPE_14__ {int /*<<< orphan*/  event_wait; int /*<<< orphan*/  event_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int DRM_SCANOUTPOS_VALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int FUNC6 (TYPE_7__*,int,int*,int*) ; 
 scalar_t__ FUNC7 (struct radeon_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct radeon_device *rdev, int crtc_id)
{
	struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];
	struct radeon_unpin_work *work;
	struct drm_pending_vblank_event *e;
	struct timeval now;
	unsigned long flags;
	u32 update_pending;
	int vpos, hpos;

	FUNC10(&rdev->ddev->event_lock, flags);
	work = radeon_crtc->unpin_work;
	if (work == NULL ||
	    (work->fence && !FUNC4(work->fence))) {
		FUNC11(&rdev->ddev->event_lock, flags);
		return;
	}
	/* New pageflip, or just completion of a previous one? */
	if (!radeon_crtc->deferred_flip_completion) {
		/* do the flip (mmio) */
		update_pending = FUNC7(rdev, crtc_id, work->new_crtc_base);
	} else {
		/* This is just a completion of a flip queued in crtc
		 * at last invocation. Make sure we go directly to
		 * completion routine.
		 */
		update_pending = 0;
		radeon_crtc->deferred_flip_completion = 0;
	}

	/* Has the pageflip already completed in crtc, or is it certain
	 * to complete in this vblank?
	 */
	if (update_pending &&
	    (DRM_SCANOUTPOS_VALID & FUNC6(rdev->ddev, crtc_id,
							       &vpos, &hpos)) &&
	    ((vpos >= (99 * rdev->mode_info.crtcs[crtc_id]->base.hwmode.crtc_vdisplay)/100) ||
	     (vpos < 0 && !FUNC0(rdev)))) {
		/* crtc didn't flip in this target vblank interval,
		 * but flip is pending in crtc. Based on the current
		 * scanout position we know that the current frame is
		 * (nearly) complete and the flip will (likely)
		 * complete before the start of the next frame.
		 */
		update_pending = 0;
	}
	if (update_pending) {
		/* crtc didn't flip in this target vblank interval,
		 * but flip is pending in crtc. It will complete it
		 * in next vblank interval, so complete the flip at
		 * next vblank irq.
		 */
		radeon_crtc->deferred_flip_completion = 1;
		FUNC11(&rdev->ddev->event_lock, flags);
		return;
	}

	/* Pageflip (will be) certainly completed in this vblank. Clean up. */
	radeon_crtc->unpin_work = NULL;

	/* wakeup userspace */
	if (work->event) {
		e = work->event;
		e->event.sequence = FUNC1(rdev->ddev, crtc_id, &now);
		e->event.tv_sec = now.tv_sec;
		e->event.tv_usec = now.tv_usec;
		FUNC3(&e->base.link, &e->base.file_priv->event_list);
		FUNC12(&e->base.file_priv->event_wait);
	}
	FUNC11(&rdev->ddev->event_lock, flags);

	FUNC2(rdev->ddev, radeon_crtc->crtc_id);
	FUNC5(&work->fence);
	FUNC8(work->rdev, work->crtc_id);
	FUNC9(&work->work);
}