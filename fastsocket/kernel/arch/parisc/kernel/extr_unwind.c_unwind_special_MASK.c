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
struct unwind_frame_info {int sp; int /*<<< orphan*/  prev_ip; int /*<<< orphan*/  prev_sp; } ;
struct pt_regs {int /*<<< orphan*/ * iaoq; int /*<<< orphan*/ * gr; } ;

/* Variables and functions */
 int PT_SZ_ALGN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long FUNC1 (unsigned long*) ; 

__attribute__((used)) static int FUNC2(struct unwind_frame_info *info, unsigned long pc, int frame_size)
{
	extern void FUNC3(int, struct pt_regs *);
	static unsigned long *hi = (unsigned long *)&handle_interruption;

	if (pc == FUNC1(hi)) {
		struct pt_regs *regs = (struct pt_regs *)(info->sp - frame_size - PT_SZ_ALGN);
		FUNC0("Unwinding through handle_interruption()\n");
		info->prev_sp = regs->gr[30];
		info->prev_ip = regs->iaoq[0];

		return 1;
	}

	return 0;
}