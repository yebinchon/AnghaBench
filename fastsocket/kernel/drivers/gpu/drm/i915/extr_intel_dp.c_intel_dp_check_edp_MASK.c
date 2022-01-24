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
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_PP_CONTROL ; 
 int /*<<< orphan*/  PCH_PP_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct drm_device* FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 

__attribute__((used)) static void
FUNC7(struct intel_dp *intel_dp)
{
	struct drm_device *dev = FUNC3(intel_dp);
	struct drm_i915_private *dev_priv = dev->dev_private;

	if (!FUNC6(intel_dp))
		return;
	if (!FUNC4(intel_dp) && !FUNC5(intel_dp)) {
		FUNC2(1, "eDP powered off while attempting aux channel communication.\n");
		FUNC0("Status 0x%08x Control 0x%08x\n",
			      FUNC1(PCH_PP_STATUS),
			      FUNC1(PCH_PP_CONTROL));
	}
}