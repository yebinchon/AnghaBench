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
struct mm_struct {scalar_t__ context; int /*<<< orphan*/  mm_users; } ;
typedef  int /*<<< orphan*/  smpfunc_t ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  (*) (struct mm_struct*)) ; 
 scalar_t__ NO_CONTEXT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC10(struct mm_struct *mm)
{
	if(mm->context != NO_CONTEXT) {
		cpumask_t cpu_mask = *FUNC7(mm);
		FUNC2(FUNC8(), cpu_mask);
		if (!FUNC5(cpu_mask)) {
			FUNC9((smpfunc_t) FUNC0(local_flush_tlb_mm), (unsigned long) mm);
			if(FUNC1(&mm->mm_users) == 1 && current->active_mm == mm)
				FUNC3(FUNC7(mm),
					     FUNC4(FUNC8()));
		}
		FUNC6(mm);
	}
}