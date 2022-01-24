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
struct wm831x_dcdc {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM831X_DC1_ON_VSEL_MASK ; 
 struct wm831x_dcdc* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*,int) ; 
 int FUNC2 (struct wm831x*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev, int reg,
					 int min_uV, int max_uV)
{
	struct wm831x_dcdc *dcdc = FUNC0(rdev);
	struct wm831x *wm831x = dcdc->wm831x;
	u16 vsel;

	if (min_uV < 600000)
		vsel = 0;
	else if (min_uV <= 1800000)
		vsel = ((min_uV - 600000) / 12500) + 8;
	else
		return -EINVAL;

	if (FUNC1(rdev, vsel) > max_uV)
		return -EINVAL;

	return FUNC2(wm831x, reg, WM831X_DC1_ON_VSEL_MASK, vsel);
}