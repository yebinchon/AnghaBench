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
typedef  int u32 ;
struct drm_i915_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int GEN6_GT_THREAD_STATUS_CORE_MASK ; 
 int GEN6_GT_THREAD_STATUS_CORE_MASK_HSW ; 
 int /*<<< orphan*/  GEN6_GT_THREAD_STATUS_REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	u32 gt_thread_status_mask;

	if (FUNC2(dev_priv->dev))
		gt_thread_status_mask = GEN6_GT_THREAD_STATUS_CORE_MASK_HSW;
	else
		gt_thread_status_mask = GEN6_GT_THREAD_STATUS_CORE_MASK;

	/* w/a for a sporadic read returning 0 by waiting for the GT
	 * thread to wake up.
	 */
	if (FUNC3((FUNC1(GEN6_GT_THREAD_STATUS_REG) & gt_thread_status_mask) == 0, 500))
		FUNC0("GT thread status wait timed out\n");
}