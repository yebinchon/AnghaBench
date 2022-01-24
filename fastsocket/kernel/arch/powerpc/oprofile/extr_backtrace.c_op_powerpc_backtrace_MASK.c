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
struct pt_regs {unsigned long* gpr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_32BIT ; 
 unsigned long FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned long,int) ; 
 unsigned long FUNC3 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs* const) ; 

void FUNC5(struct pt_regs * const regs, unsigned int depth)
{
	unsigned long sp = regs->gpr[1];
	int first_frame = 1;

	/* We ditch the top stackframe so need to loop through an extra time */
	depth += 1;

	if (!FUNC4(regs)) {
		while (depth--) {
			sp = FUNC0(sp, first_frame);
			if (!sp)
				break;
			first_frame = 0;
		}
	} else {
#ifdef CONFIG_PPC64
		if (!test_thread_flag(TIF_32BIT)) {
			while (depth--) {
				sp = user_getsp64(sp, first_frame);
				if (!sp)
					break;
				first_frame = 0;
			}

			return;
		}
#endif

		while (depth--) {
			sp = FUNC2(sp, first_frame);
			if (!sp)
				break;
			first_frame = 0;
		}
	}
}