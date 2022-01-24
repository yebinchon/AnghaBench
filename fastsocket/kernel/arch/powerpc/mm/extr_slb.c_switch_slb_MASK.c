#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  context; } ;
struct TYPE_2__ {unsigned long slb_cache_ptr; int /*<<< orphan*/  context; scalar_t__* slb_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_NO_SLBIE_B ; 
 unsigned long FUNC0 (struct task_struct*) ; 
 unsigned long FUNC1 (struct task_struct*) ; 
 unsigned long SID_SHIFT ; 
 unsigned long SLBIE_C ; 
 unsigned long SLBIE_SSIZE_SHIFT ; 
 unsigned long SLB_CACHE_ENTRIES ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 unsigned long FUNC9 (unsigned long) ; 

void FUNC10(struct task_struct *tsk, struct mm_struct *mm)
{
	unsigned long offset;
	unsigned long slbie_data = 0;
	unsigned long pc = FUNC0(tsk);
	unsigned long stack = FUNC1(tsk);
	unsigned long exec_base;

	/*
	 * We need interrupts hard-disabled here, not just soft-disabled,
	 * so that a PMU interrupt can't occur, which might try to access
	 * user memory (to get a stack trace) and possible cause an SLB miss
	 * which would update the slb_cache/slb_cache_ptr fields in the PACA.
	 */
	FUNC6();
	offset = FUNC5()->slb_cache_ptr;
	if (!FUNC3(CPU_FTR_NO_SLBIE_B) &&
	    offset <= SLB_CACHE_ENTRIES) {
		int i;
		asm volatile("isync" : : : "memory");
		for (i = 0; i < offset; i++) {
			slbie_data = (unsigned long)FUNC5()->slb_cache[i]
				<< SID_SHIFT; /* EA */
			slbie_data |= FUNC9(slbie_data)
				<< SLBIE_SSIZE_SHIFT;
			slbie_data |= SLBIE_C; /* C set for user addresses */
			asm volatile("slbie %0" : : "r" (slbie_data));
		}
		asm volatile("isync" : : : "memory");
	} else {
		FUNC2();
	}

	/* Workaround POWER5 < DD2.1 issue */
	if (offset == 1 || offset > SLB_CACHE_ENTRIES)
		asm volatile("slbie %0" : : "r" (slbie_data));

	FUNC5()->slb_cache_ptr = 0;
	FUNC5()->context = mm->context;

	/*
	 * preload some userspace segments into the SLB.
	 * Almost all 32 and 64bit PowerPC executables are linked at
	 * 0x10000000 so it makes sense to preload this segment.
	 */
	exec_base = 0x10000000;

	if (FUNC7(pc) || FUNC7(stack) ||
	    FUNC7(exec_base))
		return;

	FUNC8(pc);

	if (!FUNC4(pc, stack))
		FUNC8(stack);

	if (!FUNC4(pc, exec_base) &&
	    !FUNC4(stack, exec_base))
		FUNC8(exec_base);
}