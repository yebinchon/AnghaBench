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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  pm_iir; } ;
struct drm_i915_private {TYPE_1__ rps; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN6_PMIMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
				u32 pm_iir)
{
	unsigned long flags;

	/*
	 * IIR bits should never already be set because IMR should
	 * prevent an interrupt from being shown in IIR. The warning
	 * displays a case where we've unsafely cleared
	 * dev_priv->rps.pm_iir. Although missing an interrupt of the same
	 * type is not a problem, it displays a problem in the logic.
	 *
	 * The mask bit in IMR is cleared by dev_priv->rps.work.
	 */

	FUNC3(&dev_priv->rps.lock, flags);
	dev_priv->rps.pm_iir |= pm_iir;
	FUNC0(GEN6_PMIMR, dev_priv->rps.pm_iir);
	FUNC1(GEN6_PMIMR);
	FUNC4(&dev_priv->rps.lock, flags);

	FUNC2(dev_priv->wq, &dev_priv->rps.work);
}