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
struct wm8400 {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  REGULATOR_MODE_FAST 130 
#define  REGULATOR_MODE_IDLE 129 
#define  REGULATOR_MODE_NORMAL 128 
 int WM8400_DC1_ACTIVE ; 
 int WM8400_DC1_FRC_PWM ; 
 int WM8400_DC1_SLEEP ; 
 int WM8400_DCDC1 ; 
 int /*<<< orphan*/  WM8400_DCDC1_CONTROL_1 ; 
 int /*<<< orphan*/  WM8400_DCDC1_CONTROL_2 ; 
 struct wm8400* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct wm8400*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *dev, unsigned int mode)
{
	struct wm8400 *wm8400 = FUNC0(dev);
	int offset = (FUNC1(dev) - WM8400_DCDC1) * 2;
	int ret;

	switch (mode) {
	case REGULATOR_MODE_FAST:
		/* Datasheet: active with force PWM */
		ret = FUNC2(wm8400, WM8400_DCDC1_CONTROL_2 + offset,
				      WM8400_DC1_FRC_PWM, WM8400_DC1_FRC_PWM);
		if (ret != 0)
			return ret;

		return FUNC2(wm8400, WM8400_DCDC1_CONTROL_1 + offset,
				       WM8400_DC1_ACTIVE | WM8400_DC1_SLEEP,
				       WM8400_DC1_ACTIVE);

	case REGULATOR_MODE_NORMAL:
		/* Datasheet: active */
		ret = FUNC2(wm8400, WM8400_DCDC1_CONTROL_2 + offset,
				      WM8400_DC1_FRC_PWM, 0);
		if (ret != 0)
			return ret;

		return FUNC2(wm8400, WM8400_DCDC1_CONTROL_1 + offset,
				       WM8400_DC1_ACTIVE | WM8400_DC1_SLEEP,
				       WM8400_DC1_ACTIVE);

	case REGULATOR_MODE_IDLE:
		/* Datasheet: standby */
		ret = FUNC2(wm8400, WM8400_DCDC1_CONTROL_1 + offset,
				      WM8400_DC1_ACTIVE, 0);
		if (ret != 0)
			return ret;
		return FUNC2(wm8400, WM8400_DCDC1_CONTROL_1 + offset,
				       WM8400_DC1_SLEEP, 0);

	default:
		return -EINVAL;
	}
}