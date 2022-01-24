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
struct twlreg_info {int table_len; int /*<<< orphan*/ * table; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VREG_DEDICATED ; 
 struct twlreg_info* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct twlreg_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct twlreg_info	*info = FUNC1(rdev);
	int			vsel = FUNC2(info, VREG_DEDICATED);

	if (vsel < 0)
		return vsel;

	vsel &= info->table_len - 1;
	return FUNC0(info->table[vsel]) * 1000;
}