#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int int_thermal_type; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
#define  THERMAL_TYPE_EVERGREEN 133 
#define  THERMAL_TYPE_NI 132 
#define  THERMAL_TYPE_RV6XX 131 
#define  THERMAL_TYPE_RV770 130 
#define  THERMAL_TYPE_SI 129 
#define  THERMAL_TYPE_SUMO 128 
 int FUNC0 (struct radeon_device*) ; 
 struct drm_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				      struct device_attribute *attr,
				      char *buf)
{
	struct drm_device *ddev = FUNC1(FUNC7(dev));
	struct radeon_device *rdev = ddev->dev_private;
	int temp;

	switch (rdev->pm.int_thermal_type) {
	case THERMAL_TYPE_RV6XX:
		temp = FUNC2(rdev);
		break;
	case THERMAL_TYPE_RV770:
		temp = FUNC3(rdev);
		break;
	case THERMAL_TYPE_EVERGREEN:
	case THERMAL_TYPE_NI:
		temp = FUNC0(rdev);
		break;
	case THERMAL_TYPE_SUMO:
		temp = FUNC6(rdev);
		break;
	case THERMAL_TYPE_SI:
		temp = FUNC4(rdev);
		break;
	default:
		temp = 0;
		break;
	}

	return FUNC5(buf, PAGE_SIZE, "%d\n", temp);
}