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
 unsigned int REGULATOR_MODE_IDLE ; 
 unsigned int REGULATOR_MODE_NORMAL ; 
 unsigned int REGULATOR_MODE_STANDBY ; 
 int WM831X_LDO1_LP_MODE ; 
 int WM831X_LDO1_ON_MODE ; 
 int WM831X_LDO_CONTROL ; 
 int WM831X_LDO_ON_CONTROL ; 
 struct wm831x_ldo* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct wm831x*,int) ; 

__attribute__((used)) static unsigned int FUNC2(struct regulator_dev *rdev)
{
	struct wm831x_ldo *ldo = FUNC0(rdev);
	struct wm831x *wm831x = ldo->wm831x;
	int ctrl_reg = ldo->base + WM831X_LDO_CONTROL;
	int on_reg = ldo->base + WM831X_LDO_ON_CONTROL;
	int ret;

	ret = FUNC1(wm831x, on_reg);
	if (ret < 0)
		return ret;

	if (!(ret & WM831X_LDO1_ON_MODE))
		return REGULATOR_MODE_NORMAL;

	ret = FUNC1(wm831x, ctrl_reg);
	if (ret < 0)
		return ret;

	if (ret & WM831X_LDO1_LP_MODE)
		return REGULATOR_MODE_STANDBY;
	else
		return REGULATOR_MODE_IDLE;
}