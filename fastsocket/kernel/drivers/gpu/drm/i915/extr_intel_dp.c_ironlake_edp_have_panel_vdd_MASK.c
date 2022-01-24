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
 int EDP_FORCE_VDD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_PP_CONTROL ; 
 struct drm_device* FUNC1 (struct intel_dp*) ; 

__attribute__((used)) static bool FUNC2(struct intel_dp *intel_dp)
{
	struct drm_device *dev = FUNC1(intel_dp);
	struct drm_i915_private *dev_priv = dev->dev_private;

	return (FUNC0(PCH_PP_CONTROL) & EDP_FORCE_VDD) != 0;
}