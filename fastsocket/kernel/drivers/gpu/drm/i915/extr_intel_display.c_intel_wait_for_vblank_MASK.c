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
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 TYPE_1__* FUNC3 (struct drm_device*) ; 
 int FUNC4 (int) ; 
 int PIPE_VBLANK_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int) ; 
 scalar_t__ FUNC6 (int,int) ; 

void FUNC7(struct drm_device *dev, int pipe)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int pipestat_reg = FUNC4(pipe);

	if (FUNC3(dev)->gen >= 5) {
		FUNC5(dev, pipe);
		return;
	}

	/* Clear existing vblank status. Note this will clear any other
	 * sticky status fields as well.
	 *
	 * This races with i915_driver_irq_handler() with the result
	 * that either function could miss a vblank event.  Here it is not
	 * fatal, as we will either wait upon the next vblank interrupt or
	 * timeout.  Generally speaking intel_wait_for_vblank() is only
	 * called during modeset at which time the GPU should be idle and
	 * should *not* be performing page flips and thus not waiting on
	 * vblanks...
	 * Currently, the result of us stealing a vblank from the irq
	 * handler is that a single frame will be skipped during swapbuffers.
	 */
	FUNC2(pipestat_reg,
		   FUNC1(pipestat_reg) | PIPE_VBLANK_INTERRUPT_STATUS);

	/* Wait for vblank interrupt bit to set */
	if (FUNC6(FUNC1(pipestat_reg) &
		     PIPE_VBLANK_INTERRUPT_STATUS,
		     50))
		FUNC0("vblank wait timed out\n");
}