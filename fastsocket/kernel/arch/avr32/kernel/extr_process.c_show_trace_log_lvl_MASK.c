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
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(struct task_struct *tsk, unsigned long *sp,
			       struct pt_regs *regs, const char *log_lvl)
{
	unsigned long addr;

	FUNC3("%sCall trace:\n", log_lvl);

	while (!FUNC1(sp)) {
		addr = *sp++;
		if (FUNC0(addr)) {
#ifdef CONFIG_KALLSYMS
			printk("%s [<%08lx>] ", log_lvl, addr);
#else
			FUNC3(" [<%08lx>] ", addr);
#endif
			FUNC2("%s\n", addr);
		}
	}
	FUNC3("\n");
}