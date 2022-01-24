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
 int FUNC0 () ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 

void FUNC8(int entry, unsigned long entrylo0,
		unsigned long entrylo1, unsigned long entryhi,
		unsigned long pagemask)
{
	unsigned long old_pagemask;
	unsigned long old_ctx;

	/* Save old context and create impossible VPN2 value */
	old_ctx = FUNC0() & 0xff;
	old_pagemask = FUNC1();
	FUNC6(entry);
	FUNC7(pagemask);
	FUNC3(entryhi);
	FUNC4(entrylo0);
	FUNC5(entrylo1);
	FUNC2();
	FUNC3(old_ctx);
	FUNC7(old_pagemask);
}