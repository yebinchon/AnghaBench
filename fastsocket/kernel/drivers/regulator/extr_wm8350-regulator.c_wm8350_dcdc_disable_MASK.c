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
 int WM8350_DCDC_1 ; 
 int WM8350_DCDC_6 ; 
 int /*<<< orphan*/  WM8350_DCDC_LDO_REQUESTED ; 
 struct wm8350* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wm8350*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct wm8350 *wm8350 = FUNC0(rdev);
	int dcdc = FUNC1(rdev);
	u16 shift;

	if (dcdc < WM8350_DCDC_1 || dcdc > WM8350_DCDC_6)
		return -EINVAL;

	shift = dcdc - WM8350_DCDC_1;
	FUNC2(wm8350, WM8350_DCDC_LDO_REQUESTED, 1 << shift);

	return 0;
}