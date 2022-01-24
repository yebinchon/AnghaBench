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
struct wm831x_ldo {int base; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int WM831X_LDO_ON_CONTROL ; 
 struct wm831x_ldo* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev,
				     int min_uV, int max_uV)
{
	struct wm831x_ldo *ldo = FUNC0(rdev);
	int reg = ldo->base + WM831X_LDO_ON_CONTROL;

	return FUNC1(rdev, reg, min_uV, max_uV);
}