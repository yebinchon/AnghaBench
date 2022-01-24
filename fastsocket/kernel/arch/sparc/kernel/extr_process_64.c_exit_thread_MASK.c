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
struct thread_info {int* utraps; scalar_t__ pcr_reg; int /*<<< orphan*/ * user_cntd1; int /*<<< orphan*/  user_cntd0; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_PERFCTR ; 
 struct thread_info* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	struct thread_info *t = FUNC0();

	if (t->utraps) {
		if (t->utraps[0] < 2)
			FUNC1 (t->utraps);
		else
			t->utraps[0]--;
	}

	if (FUNC2(TIF_PERFCTR)) {
		t->user_cntd0 = *(t->user_cntd1 = NULL);
		t->pcr_reg = 0;
		FUNC3(0);
	}
}