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
 scalar_t__ WM8400_LDO1_CONTROL ; 
 int /*<<< orphan*/  WM8400_LDO1_VSEL_MASK ; 
 struct wm8400* FUNC1 (struct regulator_dev*) ; 
 scalar_t__ FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct wm8400*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *dev,
				  int min_uV, int max_uV)
{
	struct wm8400 *wm8400 = FUNC1(dev);
	u16 val;

	if (min_uV < 900000 || min_uV > 3300000)
		return -EINVAL;

	if (min_uV < 1700000) {
		/* Steps of 50mV from 900mV;  */
		val = (min_uV - 850001) / 50000;

		if ((val * 50000) + 900000 > max_uV)
			return -EINVAL;
		FUNC0((val * 50000) + 900000 < min_uV);
	} else {
		/* Steps of 100mV from 1700mV */
		val = ((min_uV - 1600001) / 100000);

		if ((val * 100000) + 1700000 > max_uV)
			return -EINVAL;
		FUNC0((val * 100000) + 1700000 < min_uV);

		val += 0xf;
	}

	return FUNC3(wm8400, WM8400_LDO1_CONTROL + FUNC2(dev),
			       WM8400_LDO1_VSEL_MASK, val);
}