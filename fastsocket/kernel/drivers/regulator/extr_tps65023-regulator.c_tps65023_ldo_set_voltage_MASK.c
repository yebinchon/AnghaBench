#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tps_pmic {TYPE_1__** info; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int min_uV; int max_uV; int table_len; int* table; } ;

/* Variables and functions */
 int EINVAL ; 
 int TPS65023_LDO_1 ; 
 int TPS65023_LDO_2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  TPS65023_REG_LDO_CTRL ; 
 struct tps_pmic* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct tps_pmic*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tps_pmic*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *dev,
				int min_uV, int max_uV)
{
	struct tps_pmic *tps = FUNC2(dev);
	int data, vsel, ldo = FUNC3(dev);

	if (ldo < TPS65023_LDO_1 || ldo > TPS65023_LDO_2)
		return -EINVAL;

	if (min_uV < tps->info[ldo]->min_uV || min_uV > tps->info[ldo]->max_uV)
		return -EINVAL;
	if (max_uV < tps->info[ldo]->min_uV || max_uV > tps->info[ldo]->max_uV)
		return -EINVAL;

	for (vsel = 0; vsel < tps->info[ldo]->table_len; vsel++) {
		int mV = tps->info[ldo]->table[vsel];
		int uV = mV * 1000;

		/* Break at the first in-range value */
		if (min_uV <= uV && uV <= max_uV)
			break;
	}

	if (vsel == tps->info[ldo]->table_len)
		return -EINVAL;

	data = FUNC4(tps, TPS65023_REG_LDO_CTRL);
	if (data < 0)
		return data;

	data &= FUNC0(ldo - TPS65023_LDO_1);
	data |= (vsel << (FUNC1(ldo - TPS65023_LDO_1)));
	return FUNC5(tps, TPS65023_REG_LDO_CTRL, data);
}