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
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ pm_iir; } ;
struct drm_i915_private {TYPE_1__ rps; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN6_PMIER ; 
 int /*<<< orphan*/  GEN6_PMIIR ; 
 int /*<<< orphan*/  GEN6_PMINTRMSK ; 
 int /*<<< orphan*/  GEN6_RC_CONTROL ; 
 int /*<<< orphan*/  GEN6_RPNSWREQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	FUNC1(GEN6_RC_CONTROL, 0);
	FUNC1(GEN6_RPNSWREQ, 1 << 31);
	FUNC1(GEN6_PMINTRMSK, 0xffffffff);
	FUNC1(GEN6_PMIER, 0);
	/* Complete PM interrupt masking here doesn't race with the rps work
	 * item again unmasking PM interrupts because that is using a different
	 * register (PMIMR) to mask PM interrupts. The only risk is in leaving
	 * stale bits in PMIIR and PMIMR which gen6_enable_rps will clean up. */

	FUNC2(&dev_priv->rps.lock);
	dev_priv->rps.pm_iir = 0;
	FUNC3(&dev_priv->rps.lock);

	FUNC1(GEN6_PMIIR, FUNC0(GEN6_PMIIR));
}