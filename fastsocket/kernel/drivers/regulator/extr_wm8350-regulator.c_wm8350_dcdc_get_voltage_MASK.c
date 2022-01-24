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
 int EINVAL ; 
 int WM8350_DC1_VSEL_MASK ; 
 int WM8350_DCDC1_CONTROL ; 
 int WM8350_DCDC3_CONTROL ; 
 int WM8350_DCDC4_CONTROL ; 
 int WM8350_DCDC6_CONTROL ; 
#define  WM8350_DCDC_1 133 
#define  WM8350_DCDC_2 132 
#define  WM8350_DCDC_3 131 
#define  WM8350_DCDC_4 130 
#define  WM8350_DCDC_5 129 
#define  WM8350_DCDC_6 128 
 struct wm8350* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct wm8350*,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct wm8350 *wm8350 = FUNC0(rdev);
	int volt_reg, dcdc = FUNC1(rdev);
	u16 val;

	switch (dcdc) {
	case WM8350_DCDC_1:
		volt_reg = WM8350_DCDC1_CONTROL;
		break;
	case WM8350_DCDC_3:
		volt_reg = WM8350_DCDC3_CONTROL;
		break;
	case WM8350_DCDC_4:
		volt_reg = WM8350_DCDC4_CONTROL;
		break;
	case WM8350_DCDC_6:
		volt_reg = WM8350_DCDC6_CONTROL;
		break;
	case WM8350_DCDC_2:
	case WM8350_DCDC_5:
	default:
		return -EINVAL;
	}

	/* all DCDCs have same mV bits */
	val = FUNC3(wm8350, volt_reg) & WM8350_DC1_VSEL_MASK;
	return FUNC2(val) * 1000;
}