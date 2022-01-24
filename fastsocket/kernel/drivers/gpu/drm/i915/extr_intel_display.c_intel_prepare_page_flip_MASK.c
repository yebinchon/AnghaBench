#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_crtc {TYPE_1__* unpin_work; } ;
struct drm_device {int /*<<< orphan*/  event_lock; TYPE_2__* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/ * plane_to_crtc_mapping; } ;
typedef  TYPE_2__ drm_i915_private_t ;
struct TYPE_3__ {int /*<<< orphan*/  pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct intel_crtc* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct drm_device *dev, int plane)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc =
		FUNC3(dev_priv->plane_to_crtc_mapping[plane]);
	unsigned long flags;

	/* NB: An MMIO update of the plane base pointer will also
	 * generate a page-flip completion irq, i.e. every modeset
	 * is also accompanied by a spurious intel_prepare_page_flip().
	 */
	FUNC1(&dev->event_lock, flags);
	if (intel_crtc->unpin_work)
		FUNC0(&intel_crtc->unpin_work->pending);
	FUNC2(&dev->event_lock, flags);
}