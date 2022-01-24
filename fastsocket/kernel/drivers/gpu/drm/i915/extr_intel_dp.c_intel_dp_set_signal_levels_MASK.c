#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct intel_dp {int /*<<< orphan*/ * train_set; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_3__ {TYPE_2__ base; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int DDI_BUF_EMP_MASK ; 
 int DP_PRE_EMPHASIS_MASK ; 
 int DP_VOLTAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EDP_LINK_TRAIN_VOL_EMP_MASK_IVB ; 
 int EDP_LINK_TRAIN_VOL_EMP_MASK_SNB ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 struct intel_digital_port* FUNC5 (struct intel_dp*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct intel_dp*) ; 

__attribute__((used)) static void
FUNC11(struct intel_dp *intel_dp, uint32_t *DP)
{
	struct intel_digital_port *intel_dig_port = FUNC5(intel_dp);
	struct drm_device *dev = intel_dig_port->base.base.dev;
	uint32_t signal_levels, mask;
	uint8_t train_set = intel_dp->train_set[0];

	if (FUNC3(dev)) {
		signal_levels = FUNC9(train_set);
		mask = DDI_BUF_EMP_MASK;
	} else if (FUNC2(dev) && FUNC10(intel_dp) && !FUNC4(dev)) {
		signal_levels = FUNC8(train_set);
		mask = EDP_LINK_TRAIN_VOL_EMP_MASK_IVB;
	} else if (FUNC1(dev) && FUNC10(intel_dp)) {
		signal_levels = FUNC7(train_set);
		mask = EDP_LINK_TRAIN_VOL_EMP_MASK_SNB;
	} else {
		signal_levels = FUNC6(train_set);
		mask = DP_VOLTAGE_MASK | DP_PRE_EMPHASIS_MASK;
	}

	FUNC0("Using signal levels %08x\n", signal_levels);

	*DP = (*DP & ~mask) | signal_levels;
}