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
struct wm831x_dcdc {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM831X_DCDC_ENABLE ; 
 struct wm831x_dcdc* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct wm831x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct wm831x_dcdc *dcdc = FUNC0(rdev);
	struct wm831x *wm831x = dcdc->wm831x;
	int mask = 1 << FUNC1(rdev);
	int reg;

	reg = FUNC2(wm831x, WM831X_DCDC_ENABLE);
	if (reg < 0)
		return reg;

	if (reg & mask)
		return 1;
	else
		return 0;
}