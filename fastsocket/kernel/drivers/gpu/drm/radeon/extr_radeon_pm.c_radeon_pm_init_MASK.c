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
struct TYPE_4__ {int dynpm_can_upclock; int dynpm_can_downclock; int num_power_states; int /*<<< orphan*/  dynpm_idle_work; scalar_t__ default_mclk; scalar_t__ default_sclk; scalar_t__ default_vddci; scalar_t__ default_vddc; int /*<<< orphan*/  int_thermal_type; scalar_t__ current_mclk; scalar_t__ current_sclk; int /*<<< orphan*/  dynpm_planned_action; int /*<<< orphan*/  dynpm_state; int /*<<< orphan*/  profile; int /*<<< orphan*/  pm_method; } ;
struct TYPE_3__ {scalar_t__ default_mclk; scalar_t__ default_sclk; } ;
struct radeon_device {scalar_t__ family; int /*<<< orphan*/  dev; TYPE_2__ pm; scalar_t__ mc_fw; scalar_t__ is_atom_bios; scalar_t__ bios; TYPE_1__ clock; } ;

/* Variables and functions */
 scalar_t__ CHIP_BARTS ; 
 scalar_t__ CHIP_CAYMAN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DYNPM_ACTION_NONE ; 
 int /*<<< orphan*/  DYNPM_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PM_METHOD_PROFILE ; 
 int /*<<< orphan*/  PM_PROFILE_DEFAULT ; 
 int /*<<< orphan*/  SET_VOLTAGE_TYPE_ASIC_VDDC ; 
 int /*<<< orphan*/  SET_VOLTAGE_TYPE_ASIC_VDDCI ; 
 int /*<<< orphan*/  THERMAL_TYPE_NONE ; 
 int /*<<< orphan*/  dev_attr_power_method ; 
 int /*<<< orphan*/  dev_attr_power_profile ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 scalar_t__ FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  radeon_dynpm_idle_work_handler ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,scalar_t__) ; 

int FUNC13(struct radeon_device *rdev)
{
	int ret;

	/* default to profile method */
	rdev->pm.pm_method = PM_METHOD_PROFILE;
	rdev->pm.profile = PM_PROFILE_DEFAULT;
	rdev->pm.dynpm_state = DYNPM_STATE_DISABLED;
	rdev->pm.dynpm_planned_action = DYNPM_ACTION_NONE;
	rdev->pm.dynpm_can_upclock = true;
	rdev->pm.dynpm_can_downclock = true;
	rdev->pm.default_sclk = rdev->clock.default_sclk;
	rdev->pm.default_mclk = rdev->clock.default_mclk;
	rdev->pm.current_sclk = rdev->clock.default_sclk;
	rdev->pm.current_mclk = rdev->clock.default_mclk;
	rdev->pm.int_thermal_type = THERMAL_TYPE_NONE;

	if (rdev->bios) {
		if (rdev->is_atom_bios)
			FUNC5(rdev);
		else
			FUNC6(rdev);
		FUNC10(rdev);
		FUNC9(rdev);
		/* set up the default clocks if the MC ucode is loaded */
		if ((rdev->family >= CHIP_BARTS) &&
		    (rdev->family <= CHIP_CAYMAN) &&
		    rdev->mc_fw) {
			if (rdev->pm.default_vddc)
				FUNC4(rdev, rdev->pm.default_vddc,
							SET_VOLTAGE_TYPE_ASIC_VDDC);
			if (rdev->pm.default_vddci)
				FUNC4(rdev, rdev->pm.default_vddci,
							SET_VOLTAGE_TYPE_ASIC_VDDCI);
			if (rdev->pm.default_sclk)
				FUNC11(rdev, rdev->pm.default_sclk);
			if (rdev->pm.default_mclk)
				FUNC12(rdev, rdev->pm.default_mclk);
		}
	}

	/* set up the internal thermal sensor if applicable */
	ret = FUNC8(rdev);
	if (ret)
		return ret;

	FUNC2(&rdev->pm.dynpm_idle_work, radeon_dynpm_idle_work_handler);

	if (rdev->pm.num_power_states > 1) {
		/* where's the best place to put these? */
		ret = FUNC3(rdev->dev, &dev_attr_power_profile);
		if (ret)
			FUNC0("failed to create device file for power profile\n");
		ret = FUNC3(rdev->dev, &dev_attr_power_method);
		if (ret)
			FUNC0("failed to create device file for power method\n");

		if (FUNC7(rdev)) {
			FUNC0("Failed to register debugfs file for PM!\n");
		}

		FUNC1("radeon: power management initialized\n");
	}

	return 0;
}