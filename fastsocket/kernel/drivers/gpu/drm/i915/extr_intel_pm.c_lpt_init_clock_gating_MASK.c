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
struct drm_i915_private {scalar_t__ pch_id; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ INTEL_PCH_LPT_LP_DEVICE_ID_TYPE ; 
 int PCH_LP_PARTITION_LEVEL_DISABLE ; 
 int /*<<< orphan*/  SOUTH_DSPCLK_GATE_D ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	/*
	 * TODO: this bit should only be enabled when really needed, then
	 * disabled when not needed anymore in order to save power.
	 */
	if (dev_priv->pch_id == INTEL_PCH_LPT_LP_DEVICE_ID_TYPE)
		FUNC1(SOUTH_DSPCLK_GATE_D,
			   FUNC0(SOUTH_DSPCLK_GATE_D) |
			   PCH_LP_PARTITION_LEVEL_DISABLE);
}