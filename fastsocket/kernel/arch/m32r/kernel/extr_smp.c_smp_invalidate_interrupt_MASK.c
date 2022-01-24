#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* active_mm; } ;
struct TYPE_5__ {unsigned long* context; } ;

/* Variables and functions */
 unsigned long FLUSH_ALL ; 
 unsigned long MMU_CONTEXT_ASID_MASK ; 
 unsigned long NO_CONTEXT ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  flush_cpumask ; 
 TYPE_1__* flush_mm ; 
 unsigned long flush_va ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 () ; 

void FUNC7(void)
{
	int cpu_id = FUNC6();
	unsigned long *mmc = &flush_mm->context[cpu_id];

	if (!FUNC3(cpu_id, flush_cpumask))
		return;

	if (flush_va == FLUSH_ALL) {
		*mmc = NO_CONTEXT;
		if (flush_mm == current->active_mm)
			FUNC1(flush_mm);
		else
			FUNC4(cpu_id, FUNC5(flush_mm));
	} else {
		unsigned long va = flush_va;

		if (*mmc != NO_CONTEXT) {
			va &= PAGE_MASK;
			va |= (*mmc & MMU_CONTEXT_ASID_MASK);
			FUNC0(va);
		}
	}
	FUNC2(cpu_id, flush_cpumask);
}