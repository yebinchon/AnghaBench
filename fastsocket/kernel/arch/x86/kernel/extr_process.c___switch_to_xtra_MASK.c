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
struct tss_struct {int /*<<< orphan*/  io_bitmap; } ;
struct thread_struct {int /*<<< orphan*/  io_bitmap_max; int /*<<< orphan*/  io_bitmap_ptr; int /*<<< orphan*/  debugreg7; int /*<<< orphan*/  debugreg6; int /*<<< orphan*/  debugreg3; int /*<<< orphan*/  debugreg2; int /*<<< orphan*/  debugreg1; int /*<<< orphan*/  debugreg0; } ;
struct task_struct {struct thread_struct thread; } ;

/* Variables and functions */
 unsigned long DEBUGCTLMSR_BTF ; 
 int /*<<< orphan*/  TIF_BLOCKSTEP ; 
 int /*<<< orphan*/  TIF_DEBUG ; 
 int /*<<< orphan*/  TIF_IO_BITMAP ; 
 int /*<<< orphan*/  TIF_NOTSC ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 

void FUNC10(struct task_struct *prev_p, struct task_struct *next_p,
		      struct tss_struct *tss)
{
	struct thread_struct *prev, *next;

	prev = &prev_p->thread;
	next = &next_p->thread;

	if (FUNC8(next_p, TIF_DEBUG)) {
		FUNC7(next->debugreg0, 0);
		FUNC7(next->debugreg1, 1);
		FUNC7(next->debugreg2, 2);
		FUNC7(next->debugreg3, 3);
		/* no 4 and 5 */
		FUNC7(next->debugreg6, 6);
		FUNC7(next->debugreg7, 7);
	}

	if (FUNC8(prev_p, TIF_BLOCKSTEP) ^
	    FUNC8(next_p, TIF_BLOCKSTEP)) {
		unsigned long debugctl = FUNC0();

		debugctl &= ~DEBUGCTLMSR_BTF;
		if (FUNC8(next_p, TIF_BLOCKSTEP))
			debugctl |= DEBUGCTLMSR_BTF;

		FUNC9(debugctl);
	}

	if (FUNC8(prev_p, TIF_NOTSC) ^
	    FUNC8(next_p, TIF_NOTSC)) {
		/* prev and next are different */
		if (FUNC8(next_p, TIF_NOTSC))
			FUNC1();
		else
			FUNC2();
	}

	if (FUNC8(next_p, TIF_IO_BITMAP)) {
		/*
		 * Copy the relevant range of the IO bitmap.
		 * Normally this is 128 bytes or less:
		 */
		FUNC4(tss->io_bitmap, next->io_bitmap_ptr,
		       FUNC3(prev->io_bitmap_max, next->io_bitmap_max));
	} else if (FUNC8(prev_p, TIF_IO_BITMAP)) {
		/*
		 * Clear any possible leftover bits:
		 */
		FUNC5(tss->io_bitmap, 0xff, prev->io_bitmap_max);
	}
	FUNC6(prev_p, next_p);
}