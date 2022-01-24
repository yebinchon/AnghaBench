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
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_PP_CONTROL ; 
 int /*<<< orphan*/  PCH_PP_STATUS ; 
 scalar_t__ FUNC3 (int,int,int) ; 
 struct drm_device* FUNC4 (struct intel_dp*) ; 

__attribute__((used)) static void FUNC5(struct intel_dp *intel_dp,
				       u32 mask,
				       u32 value)
{
	struct drm_device *dev = FUNC4(intel_dp);
	struct drm_i915_private *dev_priv = dev->dev_private;

	FUNC0("mask %08x value %08x status %08x control %08x\n",
		      mask, value,
		      FUNC2(PCH_PP_STATUS),
		      FUNC2(PCH_PP_CONTROL));

	if (FUNC3((FUNC2(PCH_PP_STATUS) & mask) == value, 5000, 10)) {
		FUNC1("Panel status timeout: status %08x control %08x\n",
			  FUNC2(PCH_PP_STATUS),
			  FUNC2(PCH_PP_CONTROL));
	}
}