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

/* Variables and functions */
 int KSYM_SYMBOL_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 

void FUNC4(unsigned long where, unsigned long from, unsigned long frame)
{
#ifdef CONFIG_KALLSYMS
	char sym1[KSYM_SYMBOL_LEN], sym2[KSYM_SYMBOL_LEN];
	sprint_symbol(sym1, where);
	sprint_symbol(sym2, from);
	printk("[<%08lx>] (%s) from [<%08lx>] (%s)\n", where, sym1, from, sym2);
#else
	FUNC2("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
#endif

	if (FUNC1(where))
		FUNC0("", "Exception stack", frame + 4, frame + 4 + sizeof(struct pt_regs));
}