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
typedef  scalar_t__ u16 ;
struct wm831x_dcdc {scalar_t__ base; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  WM831X_DC1_HC_THR_MASK ; 
 scalar_t__ WM831X_DCDC_CONTROL_2 ; 
 struct wm831x_dcdc* FUNC1 (struct regulator_dev*) ; 
 int* wm831x_dcdc_ilim ; 
 int FUNC2 (struct wm831x*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev,
					   int min_uA, int max_uA)
{
	struct wm831x_dcdc *dcdc = FUNC1(rdev);
	struct wm831x *wm831x = dcdc->wm831x;
	u16 reg = dcdc->base + WM831X_DCDC_CONTROL_2;
	int i;

	for (i = 0; i < FUNC0(wm831x_dcdc_ilim); i++) {
		if (max_uA <= wm831x_dcdc_ilim[i])
			break;
	}
	if (i == FUNC0(wm831x_dcdc_ilim))
		return -EINVAL;

	return FUNC2(wm831x, reg, WM831X_DC1_HC_THR_MASK, i);
}