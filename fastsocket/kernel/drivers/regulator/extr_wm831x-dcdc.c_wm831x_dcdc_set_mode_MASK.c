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
 scalar_t__ WM831X_DCDC_ON_CONFIG ; 
 struct wm831x_dcdc* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct wm831x*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev, unsigned int mode)
{
	struct wm831x_dcdc *dcdc = FUNC0(rdev);
	struct wm831x *wm831x = dcdc->wm831x;
	u16 reg = dcdc->base + WM831X_DCDC_ON_CONFIG;

	return FUNC1(wm831x, reg, mode);
}