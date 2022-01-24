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
 long BL_OFFSET_MASK ; 
 long BL_OPCODE ; 
 scalar_t__ PC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 long bl_insn ; 
 scalar_t__ FUNC1 (int) ; 

unsigned char *FUNC2(unsigned long pc, unsigned long addr)
{
	long offset;

	offset = (long)addr - (long)(pc + PC_OFFSET);
	if (FUNC1(offset < -33554432 || offset > 33554428)) {
		/* Can't generate branches that far (from ARM ARM). Ftrace
		 * doesn't generate branches outside of kernel text.
		 */
		FUNC0(1);
		return NULL;
	}
	offset = (offset >> 2) & BL_OFFSET_MASK;
	bl_insn = BL_OPCODE | offset;
	return (unsigned char *)&bl_insn;
}