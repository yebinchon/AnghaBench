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
struct regulator_dev {int /*<<< orphan*/  dev; } ;
struct lp3971 {int dummy; } ;

/* Variables and functions */
 size_t BUCK_TARGET_VOL_MASK ; 
 size_t BUCK_TARGET_VOL_MAX_IDX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LP3971_DCDC1 ; 
 int* buck_voltage_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC2 (struct lp3971*,int /*<<< orphan*/ ) ; 
 struct lp3971* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *dev)
{
	struct lp3971 *lp3971 = FUNC3(dev);
	int buck = FUNC4(dev) - LP3971_DCDC1;
	u16 reg;
	int val;

	reg = FUNC2(lp3971, FUNC0(buck));
	reg &= BUCK_TARGET_VOL_MASK;

	if (reg <= BUCK_TARGET_VOL_MAX_IDX)
		val = 1000 * buck_voltage_map[reg];
	else {
		val = 0;
		FUNC1(&dev->dev, "chip reported incorrect voltage value.\n");
	}

	return val;
}