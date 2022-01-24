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
 size_t LDO_VOL_CONTR_MASK ; 
 size_t FUNC0 (int) ; 
 int* FUNC1 (int) ; 
 int LP3971_LDO1 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (struct lp3971*,int /*<<< orphan*/ ) ; 
 struct lp3971* FUNC4 (struct regulator_dev*) ; 
 int FUNC5 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *dev)
{
	struct lp3971 *lp3971 = FUNC4(dev);
	int ldo = FUNC5(dev) - LP3971_LDO1;
	u16 val, reg;

	reg = FUNC3(lp3971, FUNC2(ldo));
	val = (reg >> FUNC0(ldo)) & LDO_VOL_CONTR_MASK;

	return 1000 * FUNC1(ldo)[val];
}