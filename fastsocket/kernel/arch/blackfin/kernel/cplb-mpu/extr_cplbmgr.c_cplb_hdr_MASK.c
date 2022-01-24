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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 () ; 

int FUNC4(int seqstat, struct pt_regs *regs)
{
	int cause = seqstat & 0x3f;
	unsigned int cpu = FUNC3();
	switch (cause) {
	case 0x23:
		return FUNC1(cpu);
	case 0x2C:
		return FUNC2(cpu);
	case 0x26:
		return FUNC0(cpu);
	default:
		return 1;
	}
}