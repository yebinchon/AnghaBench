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
struct thread_info {scalar_t__* fpsaved; scalar_t__ pcr_reg; int /*<<< orphan*/ * user_cntd1; int /*<<< orphan*/  user_cntd0; TYPE_1__* task; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 scalar_t__ ASI_AIUS ; 
 int /*<<< orphan*/  TIF_32BIT ; 
 int /*<<< orphan*/  TIF_ABI_PENDING ; 
 int /*<<< orphan*/  TIF_PERFCTR ; 
 int /*<<< orphan*/  USER_DS ; 
 int /*<<< orphan*/  FUNC0 (struct thread_info*,int /*<<< orphan*/ ) ; 
 struct thread_info* FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thread_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct thread_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	struct thread_info *t = FUNC1();
	struct mm_struct *mm;

	if (FUNC7(t, TIF_ABI_PENDING)) {
		FUNC0(t, TIF_ABI_PENDING);
		if (FUNC7(t, TIF_32BIT))
			FUNC0(t, TIF_32BIT);
		else
			FUNC5(t, TIF_32BIT);
	}

	mm = t->task->mm;
	if (mm)
		FUNC8(mm);

	FUNC4(0);

	/* Turn off performance counters if on. */
	if (FUNC6(TIF_PERFCTR)) {
		t->user_cntd0 = *(t->user_cntd1 = NULL);
		t->pcr_reg = 0;
		FUNC9(0);
	}

	/* Clear FPU register state. */
	t->fpsaved[0] = 0;
	
	if (FUNC2() != ASI_AIUS)
		FUNC3(USER_DS);
}