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
 int HZ ; 
 int mips_hpt_frequency ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(void)
{
#ifdef CONFIG_CAVIUM_GDB
	unsigned long tmp;
	/* Pulse MCD0 signal on Ctrl-C to stop all the cores. Also set the MCD0
	   to be not masked by this core so we know the signal is received by
	   someone */
	asm volatile ("dmfc0 %0, $22\n"
		      "ori   %0, %0, 0x9100\n" "dmtc0 %0, $22\n" : "=r" (tmp));
#endif

	FUNC0();

	/* to generate the first CPU timer interrupt */
	FUNC2(FUNC1() + mips_hpt_frequency / HZ);
}