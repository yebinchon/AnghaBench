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
struct task_struct {int dummy; } ;
typedef  int /*<<< orphan*/  next_insn ;
typedef  int /*<<< orphan*/  code ;

/* Variables and functions */
 int FUNC0 (struct task_struct*,unsigned long,unsigned long*,int,int) ; 
 scalar_t__ FUNC1 (struct task_struct*,unsigned long,unsigned long,unsigned long*) ; 

__attribute__((used)) static int
FUNC2(struct task_struct *child, unsigned long next_pc)
{
	unsigned long next_insn, code;
	unsigned long addr = next_pc & ~3;

	if (FUNC0(child, addr, &next_insn, sizeof(next_insn), 0)
	    != sizeof(next_insn)) {
		return -1; /* error */
	}

	/* Set a trap code. */
	if (FUNC1(child, next_pc, next_insn, &code)) {
		return -1; /* error */
	}
	if (FUNC0(child, addr, &code, sizeof(code), 1)
	    != sizeof(code)) {
		return -1; /* error */
	}
	return 0; /* success */
}