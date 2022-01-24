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
typedef  int uint8_t ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
struct da903x_regulator_info {int vol_nbits; int vol_shift; int min_uV; int step_uV; int /*<<< orphan*/  vol_reg; } ;

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ ,int*) ; 
 struct da903x_regulator_info* FUNC1 (struct regulator_dev*) ; 
 struct device* FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct da903x_regulator_info *info = FUNC1(rdev);
	struct device *da9034_dev = FUNC2(rdev);
	uint8_t val, mask;
	int ret;

	ret = FUNC0(da9034_dev, info->vol_reg, &val);
	if (ret)
		return ret;

	mask = ((1 << info->vol_nbits) - 1)  << info->vol_shift;
	val = (val & mask) >> info->vol_shift;

	return info->min_uV + info->step_uV * val;
}