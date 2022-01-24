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
 int TPS6507X_DCDC_1 ; 
 int TPS6507X_DCDC_3 ; 
 int TPS6507X_MAX_REG_ID ; 
 int /*<<< orphan*/  TPS6507X_REG_CON_CTRL1 ; 
 struct tps_pmic* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct tps_pmic*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *dev)
{
	struct tps_pmic *tps = FUNC0(dev);
	int dcdc = FUNC1(dev);
	u8 shift;

	if (dcdc < TPS6507X_DCDC_1 || dcdc > TPS6507X_DCDC_3)
		return -EINVAL;

	shift = TPS6507X_MAX_REG_ID - dcdc;
	return FUNC2(tps, TPS6507X_REG_CON_CTRL1, 1 << shift);
}