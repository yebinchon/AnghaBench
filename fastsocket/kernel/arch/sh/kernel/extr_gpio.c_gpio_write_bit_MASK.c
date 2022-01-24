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
struct pinmux_data_reg {unsigned long reg_width; int /*<<< orphan*/  reg_shadow; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pinmux_data_reg *dr,
			   unsigned long in_pos, unsigned long value)
{
	unsigned long pos;

	pos = dr->reg_width - (in_pos + 1);

#ifdef DEBUG
	pr_info("write_bit addr = %lx, value = %ld, pos = %ld, "
		"r_width = %ld\n",
		dr->reg, !!value, pos, dr->reg_width);
#endif

	if (value)
		FUNC3(pos, &dr->reg_shadow);
	else
		FUNC0(pos, &dr->reg_shadow);

	FUNC1(dr->reg, dr->reg_width, dr->reg_shadow);
}