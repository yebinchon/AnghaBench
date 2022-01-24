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
struct pt_regs {int /*<<< orphan*/  pc; } ;
struct exception_table_entry {int /*<<< orphan*/  fixup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,struct pt_regs*,long) ; 
 struct exception_table_entry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 

__attribute__((used)) static void FUNC3(const char * str, struct pt_regs * regs, long err)
{
	if (!FUNC2(regs)) {
		const struct exception_table_entry *fixup;
		fixup = FUNC1(regs->pc);
		if (fixup) {
			regs->pc = fixup->fixup;
			return;
		}
		FUNC0(str, regs, err);
	}
}