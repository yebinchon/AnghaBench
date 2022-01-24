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
struct TYPE_5__ {int size; void* ldt; } ;
typedef  TYPE_1__ mm_context_t ;
struct TYPE_6__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LDT_ENTRY_SIZE ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  flush_ldt ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 void* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(mm_context_t *pc, int mincount, int reload)
{
	void *oldldt, *newldt;
	int oldsize;

	if (mincount <= pc->size)
		return 0;
	oldsize = pc->size;
	mincount = (mincount + (PAGE_SIZE / LDT_ENTRY_SIZE - 1)) &
			(~(PAGE_SIZE / LDT_ENTRY_SIZE - 1));
	if (mincount * LDT_ENTRY_SIZE > PAGE_SIZE)
		newldt = FUNC16(mincount * LDT_ENTRY_SIZE);
	else
		newldt = (void *)FUNC0(GFP_KERNEL);

	if (!newldt)
		return -ENOMEM;

	if (oldsize)
		FUNC4(newldt, pc->ldt, oldsize * LDT_ENTRY_SIZE);
	oldldt = pc->ldt;
	FUNC5(newldt + oldsize * LDT_ENTRY_SIZE, 0,
	       (mincount - oldsize) * LDT_ENTRY_SIZE);

	FUNC7(newldt, mincount);

#ifdef CONFIG_X86_64
	/* CHECKME: Do we really need this ? */
	wmb();
#endif
	pc->ldt = newldt;
	FUNC17();
	pc->size = mincount;
	FUNC17();

	if (reload) {
#ifdef CONFIG_SMP
		preempt_disable();
		load_LDT(pc);
		if (!cpumask_equal(mm_cpumask(current->mm),
				   cpumask_of(smp_processor_id())))
			smp_call_function(flush_ldt, current->mm, 1);
		preempt_enable();
#else
		FUNC3(pc);
#endif
	}
	if (oldsize) {
		FUNC8(oldldt, oldsize);
		if (oldsize * LDT_ENTRY_SIZE > PAGE_SIZE)
			FUNC14(oldldt);
		else
			FUNC11(FUNC15(oldldt));
	}
	return 0;
}