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
typedef  int /*<<< orphan*/  u32 ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cpu_base ; 
 int FUNC1 (unsigned int,unsigned int,unsigned int,struct dentry*) ; 
 int /*<<< orphan*/  cpu_reg_range ; 
 struct dentry* FUNC2 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int*,unsigned int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC6(unsigned cpu, unsigned type, struct dentry *dentry)
{
	struct dentry *cpu_dentry = NULL;
	unsigned reg, reg_min, reg_max;
	int i, err = 0;
	char reg_dir[12];
	u32 low, high;

	for (i = 0; i < FUNC0(cpu_reg_range); i++) {
		if (!FUNC3(cpu, &reg_min, &reg_max, i,
				   cpu_base[type].flag))
			continue;

		for (reg = reg_min; reg <= reg_max; reg++) {
			if (FUNC4(cpu, reg, &low, &high))
				continue;

			FUNC5(reg_dir, "0x%x", reg);
			cpu_dentry = FUNC2(reg_dir, dentry);
			err = FUNC1(cpu, type, reg, cpu_dentry);
			if (err)
				return err;
		}
	}

	return err;
}