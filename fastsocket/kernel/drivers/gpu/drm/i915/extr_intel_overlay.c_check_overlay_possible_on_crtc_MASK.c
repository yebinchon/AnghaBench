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
struct intel_overlay {TYPE_2__* dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; int /*<<< orphan*/  active; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;
struct TYPE_4__ {int /*<<< orphan*/ * dev_private; } ;
struct TYPE_3__ {int gen; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int PIPECONF_DOUBLE_WIDE ; 
 int PIPECONF_ENABLE ; 

__attribute__((used)) static int FUNC3(struct intel_overlay *overlay,
					  struct intel_crtc *crtc)
{
	drm_i915_private_t *dev_priv = overlay->dev->dev_private;

	if (!crtc->active)
		return -EINVAL;

	/* can't use the overlay with double wide pipe */
	if (FUNC1(overlay->dev)->gen < 4 &&
	    (FUNC0(FUNC2(crtc->pipe)) & (PIPECONF_DOUBLE_WIDE | PIPECONF_ENABLE)) != PIPECONF_ENABLE)
		return -EINVAL;

	return 0;
}