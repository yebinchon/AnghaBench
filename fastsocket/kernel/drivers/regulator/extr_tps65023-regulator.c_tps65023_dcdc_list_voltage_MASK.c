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
struct TYPE_2__ {unsigned int table_len; int* table; int min_uV; } ;

/* Variables and functions */
 int EINVAL ; 
 int TPS65023_DCDC_1 ; 
 int TPS65023_DCDC_3 ; 
 struct tps_pmic* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *dev,
					unsigned selector)
{
	struct tps_pmic *tps = FUNC0(dev);
	int dcdc = FUNC1(dev);

	if (dcdc < TPS65023_DCDC_1 || dcdc > TPS65023_DCDC_3)
		return -EINVAL;

	if (dcdc == TPS65023_DCDC_1) {
		if (selector >= tps->info[dcdc]->table_len)
			return -EINVAL;
		else
			return tps->info[dcdc]->table[selector] * 1000;
	} else
		return tps->info[dcdc]->min_uV;
}