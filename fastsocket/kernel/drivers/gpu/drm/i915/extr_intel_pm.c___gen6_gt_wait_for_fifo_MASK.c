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
typedef  scalar_t__ u32 ;
struct drm_i915_private {scalar_t__ gt_fifo_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GT_FIFO_FREE_ENTRIES ; 
 scalar_t__ GT_FIFO_NUM_RESERVED_ENTRIES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct drm_i915_private *dev_priv)
{
	int ret = 0;

	if (dev_priv->gt_fifo_count < GT_FIFO_NUM_RESERVED_ENTRIES) {
		int loop = 500;
		u32 fifo = FUNC0(GT_FIFO_FREE_ENTRIES);
		while (fifo <= GT_FIFO_NUM_RESERVED_ENTRIES && loop--) {
			FUNC2(10);
			fifo = FUNC0(GT_FIFO_FREE_ENTRIES);
		}
		if (FUNC1(loop < 0 && fifo <= GT_FIFO_NUM_RESERVED_ENTRIES))
			++ret;
		dev_priv->gt_fifo_count = fifo;
	}
	dev_priv->gt_fifo_count--;

	return ret;
}