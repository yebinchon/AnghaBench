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

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long reg, unsigned long reg_width,
			   unsigned long field_width, unsigned long in_pos,
			   unsigned long value)
{
	unsigned long mask, pos;

	mask = (1 << field_width) - 1;
	pos = reg_width - ((in_pos + 1) * field_width);

#ifdef DEBUG
	pr_info("write_reg addr = %lx, value = %ld, pos = %ld, "
		"r_width = %ld, f_width = %ld\n",
		reg, value, pos, reg_width, field_width);
#endif

	mask = ~(mask << pos);
	value = value << pos;

	switch (reg_width) {
	case 8:
		FUNC3((FUNC0(reg) & mask) | value, reg);
		break;
	case 16:
		FUNC5((FUNC2(reg) & mask) | value, reg);
		break;
	case 32:
		FUNC4((FUNC1(reg) & mask) | value, reg);
		break;
	}
}