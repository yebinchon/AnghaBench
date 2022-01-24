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
 scalar_t__ FUNC0 (unsigned long,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(unsigned int *pc)
{
	long i;

	FUNC1("\nCode:");

	for(i = -3 ; i < 6 ; i++) {
		unsigned long insn;
		if (FUNC0(insn, pc + i)) {
			FUNC1(" (Bad address in pc)\n");
			break;
		}
		FUNC1("%c%08lx%c",(i?' ':'<'),insn,(i?' ':'>'));
	}
}