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
typedef  int /*<<< orphan*/  uint8_t ;
struct intel_dp {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_TRAIN_VOLTAGE_SWING_1200 ; 
 int /*<<< orphan*/  DP_TRAIN_VOLTAGE_SWING_800 ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 struct drm_device* FUNC2 (struct intel_dp*) ; 
 scalar_t__ FUNC3 (struct intel_dp*) ; 

__attribute__((used)) static uint8_t
FUNC4(struct intel_dp *intel_dp)
{
	struct drm_device *dev = FUNC2(intel_dp);

	if (FUNC1(dev) && FUNC3(intel_dp))
		return DP_TRAIN_VOLTAGE_SWING_800;
	else if (FUNC0(dev) && !FUNC3(intel_dp))
		return DP_TRAIN_VOLTAGE_SWING_1200;
	else
		return DP_TRAIN_VOLTAGE_SWING_800;
}