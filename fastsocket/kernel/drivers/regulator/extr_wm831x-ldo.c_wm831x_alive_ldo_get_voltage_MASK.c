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
struct wm831x_ldo {int base; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int WM831X_ALIVE_LDO_ON_CONTROL ; 
 int WM831X_LDO11_ON_VSEL_MASK ; 
 struct wm831x_ldo* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*,int) ; 
 int FUNC2 (struct wm831x*,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct wm831x_ldo *ldo = FUNC0(rdev);
	struct wm831x *wm831x = ldo->wm831x;
	int reg = ldo->base + WM831X_ALIVE_LDO_ON_CONTROL;
	int ret;

	ret = FUNC2(wm831x, reg);
	if (ret < 0)
		return ret;

	ret &= WM831X_LDO11_ON_VSEL_MASK;

	return FUNC1(rdev, ret);
}