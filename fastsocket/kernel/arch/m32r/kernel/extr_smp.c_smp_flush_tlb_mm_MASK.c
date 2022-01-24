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
struct mm_struct {unsigned long* context; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_ALL ; 
 unsigned long NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 

void FUNC11(struct mm_struct *mm)
{
	int cpu_id;
	cpumask_t cpu_mask;
	unsigned long *mmc;
	unsigned long flags;

	FUNC8();
	cpu_id = FUNC10();
	mmc = &mm->context[cpu_id];
	cpu_mask = *FUNC7(mm);
	FUNC1(cpu_id, cpu_mask);

	if (*mmc != NO_CONTEXT) {
		FUNC6(flags);
		*mmc = NO_CONTEXT;
		if (mm == current->mm)
			FUNC0(mm);
		else
			FUNC2(cpu_id, FUNC7(mm));
		FUNC5(flags);
	}
	if (!FUNC3(cpu_mask))
		FUNC4(cpu_mask, mm, NULL, FLUSH_ALL);

	FUNC9();
}