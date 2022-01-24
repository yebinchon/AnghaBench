#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int int_thermal_type; TYPE_2__* int_hwmon_dev; } ;
struct radeon_device {int /*<<< orphan*/  dev; TYPE_1__ pm; int /*<<< orphan*/  ddev; int /*<<< orphan*/  family; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_ARUBA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
#define  THERMAL_TYPE_EVERGREEN 133 
#define  THERMAL_TYPE_NI 132 
#define  THERMAL_TYPE_RV6XX 131 
#define  THERMAL_TYPE_RV770 130 
#define  THERMAL_TYPE_SI 129 
#define  THERMAL_TYPE_SUMO 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwmon_attrgroup ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct radeon_device *rdev)
{
	int err = 0;

	rdev->pm.int_hwmon_dev = NULL;

	switch (rdev->pm.int_thermal_type) {
	case THERMAL_TYPE_RV6XX:
	case THERMAL_TYPE_RV770:
	case THERMAL_TYPE_EVERGREEN:
	case THERMAL_TYPE_NI:
	case THERMAL_TYPE_SUMO:
	case THERMAL_TYPE_SI:
		/* No support for TN yet */
		if (rdev->family == CHIP_ARUBA)
			return err;
		rdev->pm.int_hwmon_dev = FUNC4(rdev->dev);
		if (FUNC0(rdev->pm.int_hwmon_dev)) {
			err = FUNC1(rdev->pm.int_hwmon_dev);
			FUNC2(rdev->dev,
				"Unable to register hwmon device: %d\n", err);
			break;
		}
		FUNC3(rdev->pm.int_hwmon_dev, rdev->ddev);
		err = FUNC6(&rdev->pm.int_hwmon_dev->kobj,
					 &hwmon_attrgroup);
		if (err) {
			FUNC2(rdev->dev,
				"Unable to create hwmon sysfs file: %d\n", err);
			FUNC5(rdev->dev);
		}
		break;
	default:
		break;
	}

	return err;
}