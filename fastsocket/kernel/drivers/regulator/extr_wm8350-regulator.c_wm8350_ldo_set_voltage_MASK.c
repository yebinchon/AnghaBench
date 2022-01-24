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
typedef  int u16 ;
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int WM8350_LDO1_CONTROL ; 
 int WM8350_LDO1_VSEL_MASK ; 
 int WM8350_LDO2_CONTROL ; 
 int WM8350_LDO3_CONTROL ; 
 int WM8350_LDO4_CONTROL ; 
#define  WM8350_LDO_1 131 
#define  WM8350_LDO_2 130 
#define  WM8350_LDO_3 129 
#define  WM8350_LDO_4 128 
 struct wm8350* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct wm8350*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wm8350*,int,int) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *rdev, int min_uV,
	int max_uV)
{
	struct wm8350 *wm8350 = FUNC1(rdev);
	int volt_reg, ldo = FUNC2(rdev), mV, min_mV = min_uV / 1000,
		max_mV = max_uV / 1000;
	u16 val;

	if (min_mV < 900 || min_mV > 3300)
		return -EINVAL;
	if (max_mV < 900 || max_mV > 3300)
		return -EINVAL;

	if (min_mV < 1800) {
		/* step size is 50mV < 1800mV */
		mV = (min_mV - 851) / 50;
		if (FUNC3(mV) > max_mV)
			return -EINVAL;
		FUNC0(FUNC3(mV) < min_mV);
	} else {
		/* step size is 100mV > 1800mV */
		mV = ((min_mV - 1701) / 100) + 16;
		if (FUNC3(mV) > max_mV)
			return -EINVAL;
		FUNC0(FUNC3(mV) < min_mV);
	}

	switch (ldo) {
	case WM8350_LDO_1:
		volt_reg = WM8350_LDO1_CONTROL;
		break;
	case WM8350_LDO_2:
		volt_reg = WM8350_LDO2_CONTROL;
		break;
	case WM8350_LDO_3:
		volt_reg = WM8350_LDO3_CONTROL;
		break;
	case WM8350_LDO_4:
		volt_reg = WM8350_LDO4_CONTROL;
		break;
	default:
		return -EINVAL;
	}

	/* all LDOs have same mV bits */
	val = FUNC4(wm8350, volt_reg) & ~WM8350_LDO1_VSEL_MASK;
	FUNC5(wm8350, volt_reg, val | mV);
	return 0;
}