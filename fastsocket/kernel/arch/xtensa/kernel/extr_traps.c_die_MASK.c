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
struct pt_regs {scalar_t__* areg; } ;

/* Variables and functions */
 int /*<<< orphan*/  TAINT_DIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct pt_regs*) ; 

void FUNC11(const char * str, struct pt_regs * regs, long err)
{
	static int die_counter;
	int nl = 0;

	FUNC1();
	FUNC8(&die_lock);

	FUNC5("%s: sig: %ld [#%d]\n", str, err, ++die_counter);
#ifdef CONFIG_PREEMPT
	printk("PREEMPT ");
	nl = 1;
#endif
	if (nl)
		FUNC5("\n");
	FUNC6(regs);
	if (!FUNC10(regs))
		FUNC7(NULL, (unsigned long*)regs->areg[1]);

	FUNC0(TAINT_DIE);
	FUNC9(&die_lock);

	if (FUNC3())
		FUNC4("Fatal exception in interrupt");

	if (panic_on_oops)
		FUNC4("Fatal exception");

	FUNC2(err);
}