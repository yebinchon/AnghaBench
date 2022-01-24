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
struct wm8400 {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  WM8400_DC1_VSEL_MASK ; 
 int WM8400_DCDC1 ; 
 scalar_t__ WM8400_DCDC1_CONTROL_1 ; 
 struct wm8400* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct wm8400*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *dev,
				  int min_uV, int max_uV)
{
	struct wm8400 *wm8400 = FUNC1(dev);
	u16 val;
	int offset = (FUNC2(dev) - WM8400_DCDC1) * 2;

	if (min_uV < 850000)
		return -EINVAL;

	val = (min_uV - 825001) / 25000;

	if (850000 + (25000 * val) > max_uV)
		return -EINVAL;
	FUNC0(850000 + (25000 * val) < min_uV);

	return FUNC3(wm8400, WM8400_DCDC1_CONTROL_1 + offset,
			       WM8400_DC1_VSEL_MASK, val);
}