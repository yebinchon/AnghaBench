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
typedef  int u8 ;
struct tps_pmic {TYPE_1__** info; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int min_uV; int max_uV; int table_len; int* table; } ;

/* Variables and functions */
 int EINVAL ; 
 int TPS6507X_LDO_1 ; 
 int TPS6507X_LDO_2 ; 
 int TPS6507X_REG_DEFLDO2 ; 
 int TPS6507X_REG_DEFLDO2_LDO2_MASK ; 
 int TPS6507X_REG_LDO_CTRL1 ; 
 int TPS6507X_REG_LDO_CTRL1_LDO1_MASK ; 
 struct tps_pmic* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct tps_pmic*,int) ; 
 int FUNC3 (struct tps_pmic*,int,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *dev,
				int min_uV, int max_uV)
{
	struct tps_pmic *tps = FUNC0(dev);
	int data, vsel, ldo = FUNC1(dev);
	u8 reg, mask;

	if (ldo < TPS6507X_LDO_1 || ldo > TPS6507X_LDO_2)
		return -EINVAL;
	else {
		reg = (ldo == TPS6507X_LDO_1 ?
			TPS6507X_REG_LDO_CTRL1 : TPS6507X_REG_DEFLDO2);
		mask = (ldo == TPS6507X_LDO_1 ?
			TPS6507X_REG_LDO_CTRL1_LDO1_MASK :
				TPS6507X_REG_DEFLDO2_LDO2_MASK);
	}

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

	data = FUNC2(tps, reg);
	if (data < 0)
		return data;

	data &= ~mask;
	data |= vsel;

	return FUNC3(tps, reg, data);
}