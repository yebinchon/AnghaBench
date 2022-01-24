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
struct wm831x_dcdc {scalar_t__ base; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ WM831X_DCDC_ON_CONFIG ; 
 struct wm831x_dcdc* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev,
				     int min_uV, int max_uV)
{
	struct wm831x_dcdc *dcdc = FUNC0(rdev);
	u16 reg = dcdc->base + WM831X_DCDC_ON_CONFIG;

	return FUNC1(rdev, reg, min_uV, max_uV);
}