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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PSR_IMPLE_FR551 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(char * __unused)
{
	unsigned long reset_addr;
#ifdef CONFIG_GDBSTUB
	gdbstub_exit(0);
#endif

	if (FUNC0(FUNC1()) == PSR_IMPLE_FR551)
		reset_addr = 0xfefff500;
	else
		reset_addr = 0xfeff0500;

	/* Software reset. */
	asm volatile("      dcef @(gr0,gr0),1 ! membar !"
		     "      sti     %1,@(%0,0) !"
		     "      nop ! nop ! nop ! nop ! nop ! "
		     "      nop ! nop ! nop ! nop ! nop ! "
		     "      nop ! nop ! nop ! nop ! nop ! "
		     "      nop ! nop ! nop ! nop ! nop ! "
		     : : "r" (reset_addr), "r" (1) );

	for (;;)
		;
}