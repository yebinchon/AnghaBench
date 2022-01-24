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
struct TYPE_2__ {scalar_t__ bright_16levels; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
#define  TPACPI_BRGHT_MODE_EC 130 
#define  TPACPI_BRGHT_MODE_ECNVRAM 129 
#define  TPACPI_BRGHT_MODE_UCMS_STEP 128 
 int /*<<< orphan*/  TPACPI_DBG_BRGHT ; 
 int brightness_mode ; 
 int /*<<< orphan*/  brightness_mutex ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ tp_features ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static int FUNC5(unsigned int value)
{
	int res;

	if (value > ((tp_features.bright_16levels)? 15 : 7) ||
	    value < 0)
		return -EINVAL;

	FUNC4(TPACPI_DBG_BRGHT,
			"set backlight level to %d\n", value);

	res = FUNC0(&brightness_mutex);
	if (res < 0)
		return res;

	switch (brightness_mode) {
	case TPACPI_BRGHT_MODE_EC:
	case TPACPI_BRGHT_MODE_ECNVRAM:
		res = FUNC2(value);
		break;
	case TPACPI_BRGHT_MODE_UCMS_STEP:
		res = FUNC3(value);
		break;
	default:
		res = -ENXIO;
	}

	FUNC1(&brightness_mutex);
	return res;
}