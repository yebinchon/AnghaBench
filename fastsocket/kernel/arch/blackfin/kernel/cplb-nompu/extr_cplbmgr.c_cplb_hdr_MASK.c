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
 int CPLB_UNKNOWN_ERR ; 
#define  VEC_CPLB_I_M 129 
#define  VEC_CPLB_M 128 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 () ; 

int FUNC3(int seqstat, struct pt_regs *regs)
{
	int cause = seqstat & 0x3f;
	unsigned int cpu = FUNC2();
	switch (cause) {
	case VEC_CPLB_I_M:
		return FUNC1(cpu);
	case VEC_CPLB_M:
		return FUNC0(cpu);
	default:
		return CPLB_UNKNOWN_ERR;
	}
}