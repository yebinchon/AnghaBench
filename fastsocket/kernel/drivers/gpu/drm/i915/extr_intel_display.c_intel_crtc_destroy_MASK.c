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
struct intel_unpin_work {int /*<<< orphan*/  work; struct intel_unpin_work* unpin_work; } ;
struct intel_crtc {int /*<<< orphan*/  work; struct intel_crtc* unpin_work; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_unpin_work*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct intel_unpin_work* FUNC5 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc)
{
	struct intel_crtc *intel_crtc = FUNC5(crtc);
	struct drm_device *dev = crtc->dev;
	struct intel_unpin_work *work;
	unsigned long flags;

	FUNC3(&dev->event_lock, flags);
	work = intel_crtc->unpin_work;
	intel_crtc->unpin_work = NULL;
	FUNC4(&dev->event_lock, flags);

	if (work) {
		FUNC0(&work->work);
		FUNC2(work);
	}

	FUNC1(crtc);

	FUNC2(intel_crtc);
}