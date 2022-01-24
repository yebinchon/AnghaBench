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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long FUNC6 () ; 
 unsigned int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 

void FUNC15(void)
{
#ifndef CONFIG_MIPS_MT_SMTC
	unsigned int wired;
	unsigned long flags, old_ctx;

	FUNC0(flags);
	old_ctx = FUNC6();
	wired = FUNC7() - 1;
	FUNC14(wired);
	FUNC13(wired);
	FUNC10(FUNC2(wired));
	FUNC11(0);
	FUNC12(0);
	FUNC4();
	FUNC8();
	FUNC9();
	FUNC10(old_ctx);
	FUNC1(flags);
#endif
	FUNC3();
	FUNC5();
}