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
typedef  int uint32_t ;
struct intel_hdmi {int /*<<< orphan*/  sdvox_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int DDI_BUF_CTL_ENABLE ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SDVO_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct drm_device* FUNC3 (struct intel_hdmi*) ; 

__attribute__((used)) static void
FUNC4(struct intel_hdmi *intel_hdmi)
{
	struct drm_device *dev = FUNC3(intel_hdmi);
	struct drm_i915_private *dev_priv = dev->dev_private;
	uint32_t enabled_bits;

	enabled_bits = FUNC0(dev) ? DDI_BUF_CTL_ENABLE : SDVO_ENABLE;

	FUNC2(FUNC1(intel_hdmi->sdvox_reg) & enabled_bits,
	     "HDMI port enabled, expecting disabled\n");
}