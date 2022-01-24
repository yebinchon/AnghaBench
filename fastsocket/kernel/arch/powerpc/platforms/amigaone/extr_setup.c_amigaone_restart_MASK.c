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
 int MSR_IP ; 
 int /*<<< orphan*/  SPRN_SRR0 ; 
 int /*<<< orphan*/  SPRN_SRR1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(char *cmd)
{
	FUNC1();

	/* Flush and disable caches. */
	FUNC0();

        /* Set SRR0 to the reset vector and turn on MSR_IP. */
	FUNC2(SPRN_SRR0, 0xfff00100);
	FUNC2(SPRN_SRR1, MSR_IP);

	/* Do an rfi to jump back to firmware. */
	__asm__ __volatile__("rfi" : : : "memory");

	/* Not reached. */
	while (1);
}