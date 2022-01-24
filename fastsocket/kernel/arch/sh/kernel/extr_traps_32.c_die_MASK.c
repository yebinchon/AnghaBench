#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int /*<<< orphan*/ * regs; } ;
struct TYPE_5__ {char const* comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_OOPS ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 scalar_t__ THREAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,struct pt_regs*,long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,long,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 long FUNC18 (TYPE_1__*) ; 
 int FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (struct pt_regs*) ; 

void FUNC21(const char * str, struct pt_regs * regs, long err)
{
	static int die_counter;

	FUNC9();

	FUNC15(&die_lock);
	FUNC2();
	FUNC1(1);

	FUNC13("%s: %04lx [#%d]\n", str, err & 0xffff, ++die_counter);
	FUNC17();
	FUNC12();
	FUNC14(regs);

	FUNC13("Process: %s (pid: %d, stack limit = %p)\n", current->comm,
			FUNC18(current), FUNC19(current) + 1);

	if (!FUNC20(regs) || FUNC6())
		FUNC5("Stack: ", regs->regs[15], THREAD_SIZE +
			 (unsigned long)FUNC19(current));

	FUNC8(DIE_OOPS, str, regs, err, 255, SIGSEGV);

	FUNC1(0);
	FUNC0(TAINT_DIE);
	FUNC16(&die_lock);
	FUNC10();

	if (FUNC7(current))
		FUNC3(regs);

	if (FUNC6())
		FUNC11("Fatal exception in interrupt");

	if (panic_on_oops)
		FUNC11("Fatal exception");

	FUNC4(SIGSEGV);
}