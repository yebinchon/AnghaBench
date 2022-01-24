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
struct pt_regs {int dummy; } ;
struct fadump_reg_entry {scalar_t__ reg_id; int /*<<< orphan*/  reg_value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct fadump_reg_entry*
FUNC3(struct fadump_reg_entry *reg_entry, struct pt_regs *regs)
{
	FUNC2(regs, 0, sizeof(struct pt_regs));

	while (reg_entry->reg_id != FUNC0("CPUEND")) {
		FUNC1(regs, reg_entry->reg_id,
					reg_entry->reg_value);
		reg_entry++;
	}
	reg_entry++;
	return reg_entry;
}