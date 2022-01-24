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
typedef  int u8 ;
struct tps_pmic {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int TPS65023_LDO_1 ; 
 int TPS65023_LDO_2 ; 
 int /*<<< orphan*/  TPS65023_REG_REG_CTRL ; 
 struct tps_pmic* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct tps_pmic*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *dev)
{
	struct tps_pmic *tps = FUNC0(dev);
	int data, ldo = FUNC1(dev);
	u8 shift;

	if (ldo < TPS65023_LDO_1 || ldo > TPS65023_LDO_2)
		return -EINVAL;

	shift = (ldo == TPS65023_LDO_1 ? 1 : 2);
	data = FUNC2(tps, TPS65023_REG_REG_CTRL);

	if (data < 0)
		return data;
	else
		return (data & 1<<shift) ? 1 : 0;
}