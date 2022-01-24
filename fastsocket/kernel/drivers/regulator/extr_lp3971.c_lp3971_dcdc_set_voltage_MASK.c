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
typedef  size_t u16 ;
struct regulator_dev {int dummy; } ;
struct lp3971 {int dummy; } ;

/* Variables and functions */
 size_t BUCK_TARGET_VOL_MASK ; 
 size_t BUCK_TARGET_VOL_MAX_IDX ; 
 size_t BUCK_TARGET_VOL_MIN_IDX ; 
 size_t BUCK_VOL_CHANGE_FLAG_GO ; 
 size_t BUCK_VOL_CHANGE_FLAG_MASK ; 
 size_t FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LP3971_BUCK_VOL_CHANGE_REG ; 
 int LP3971_DCDC1 ; 
 int* buck_voltage_map ; 
 int FUNC2 (struct lp3971*,int /*<<< orphan*/ ,size_t,size_t) ; 
 struct lp3971* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *dev,
				  int min_uV, int max_uV)
{
	struct lp3971 *lp3971 = FUNC3(dev);
	int buck = FUNC4(dev) - LP3971_DCDC1;
	int min_vol = min_uV / 1000, max_vol = max_uV / 1000;
	const int *vol_map = buck_voltage_map;
	u16 val;
	int ret;

	if (min_vol < vol_map[BUCK_TARGET_VOL_MIN_IDX] ||
	    min_vol > vol_map[BUCK_TARGET_VOL_MAX_IDX])
		return -EINVAL;

	for (val = BUCK_TARGET_VOL_MIN_IDX; val <= BUCK_TARGET_VOL_MAX_IDX;
	     val++)
		if (vol_map[val] >= min_vol)
			break;

	if (vol_map[val] > max_vol)
		return -EINVAL;

	ret = FUNC2(lp3971, FUNC1(buck),
	       BUCK_TARGET_VOL_MASK, val);
	if (ret)
		return ret;

	ret = FUNC2(lp3971, LP3971_BUCK_VOL_CHANGE_REG,
	       BUCK_VOL_CHANGE_FLAG_MASK << FUNC0(buck),
	       BUCK_VOL_CHANGE_FLAG_GO << FUNC0(buck));
	if (ret)
		return ret;

	return FUNC2(lp3971, LP3971_BUCK_VOL_CHANGE_REG,
	       BUCK_VOL_CHANGE_FLAG_MASK << FUNC0(buck),
	       0 << FUNC0(buck));
}