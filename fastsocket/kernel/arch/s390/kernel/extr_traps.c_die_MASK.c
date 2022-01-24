#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  trap_no; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_OOPS ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,struct pt_regs*,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(const char * str, struct pt_regs * regs, long err)
{
	static int die_counter;

	FUNC8();
	FUNC6();
	FUNC3();
	FUNC2();
	FUNC13(&die_lock);
	FUNC1(1);
	FUNC11("%s: %04lx [#%d] ", str, err & 0xffff, ++die_counter);
#ifdef CONFIG_PREEMPT
	printk("PREEMPT ");
#endif
#ifdef CONFIG_SMP
	printk("SMP ");
#endif
#ifdef CONFIG_DEBUG_PAGEALLOC
	printk("DEBUG_PAGEALLOC");
#endif
	FUNC11("\n");
	FUNC7(DIE_OOPS, str, regs, err, current->thread.trap_no, SIGSEGV);
	FUNC12(regs);
	FUNC1(0);
	FUNC0(TAINT_DIE);
	FUNC14(&die_lock);
	if (FUNC5())
		FUNC10("Fatal exception in interrupt");
	if (panic_on_oops)
		FUNC10("Fatal exception: panic_on_oops");
	FUNC9();
	FUNC4(SIGSEGV);
}