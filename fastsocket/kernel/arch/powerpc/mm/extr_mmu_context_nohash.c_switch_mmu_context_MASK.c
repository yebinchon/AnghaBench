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
struct TYPE_2__ {int active; unsigned int id; } ;
struct mm_struct {int /*<<< orphan*/  pgd; TYPE_1__ context; } ;

/* Variables and functions */
 unsigned int MMU_NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  context_lock ; 
 unsigned long* context_map ; 
 struct mm_struct** context_mm ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (unsigned long*,unsigned int,unsigned int) ; 
 unsigned int first_context ; 
 unsigned int last_context ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 unsigned int next_context ; 
 int /*<<< orphan*/  nr_free_contexts ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,struct mm_struct*,unsigned int,unsigned int,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int,struct mm_struct*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stale_map ; 
 unsigned int FUNC17 (unsigned int) ; 
 unsigned int FUNC18 (unsigned int) ; 
 scalar_t__ FUNC19 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC20(struct mm_struct *prev, struct mm_struct *next)
{
	unsigned int i, id, cpu = FUNC14();
	unsigned long *map;

	/* No lockless fast path .. yet */
	FUNC15(&context_lock);

	FUNC11("[%d] activating context for mm @%p, active=%d, id=%d",
		cpu, next, next->context.active, next->context.id);

#ifdef CONFIG_SMP
	/* Mark us active and the previous one not anymore */
	next->context.active++;
	if (prev) {
		pr_hardcont(" (old=0x%p a=%d)", prev, prev->context.active);
		WARN_ON(prev->context.active < 1);
		prev->context.active--;
	}

 again:
#endif /* CONFIG_SMP */

	/* If we already have a valid assigned context, skip all that */
	id = next->context.id;
	if (FUNC7(id != MMU_NO_CONTEXT)) {
#ifdef DEBUG_MAP_CONSISTENCY
		if (context_mm[id] != next)
			pr_err("MMU: mm 0x%p has id %d but context_mm[%d] says 0x%p\n",
			       next, id, id, context_mm[id]);
#endif
		goto ctxt_ok;
	}

	/* We really don't have a context, let's try to acquire one */
	id = next_context;
	if (id > last_context)
		id = first_context;
	map = context_map;

	/* No more free contexts, let's try to steal one */
	if (nr_free_contexts == 0) {
#ifdef CONFIG_SMP
		if (num_online_cpus() > 1) {
			id = steal_context_smp(id);
			if (id == MMU_NO_CONTEXT)
				goto again;
			goto stolen;
		}
#endif /* CONFIG_SMP */
		id = FUNC18(id);
		goto stolen;
	}
	nr_free_contexts--;

	/* We know there's at least one free context, try to find it */
	while (FUNC2(id, map)) {
		id = FUNC6(map, last_context+1, id);
		if (id > last_context)
			id = first_context;
	}
 stolen:
	next_context = id + 1;
	context_mm[id] = next;
	next->context.id = id;
	FUNC12(" | new id=%d,nrf=%d", id, nr_free_contexts);

	FUNC3();
 ctxt_ok:

	/* If that context got marked stale on this CPU, then flush the
	 * local TLB for it and unmark it before we use it
	 */
	if (FUNC19(id, stale_map[cpu])) {
		FUNC12(" | stale flush %d [%d..%d]",
			    id, FUNC4(cpu),
			    FUNC5(cpu));

		FUNC8(next);

		/* XXX This clear should ultimately be part of local_flush_tlb_mm */
		for (i = FUNC4(cpu);
		     i <= FUNC5(cpu); i++) {
			FUNC1(id, stale_map[i]);
		}
	}

	/* Flick the MMU and release lock */
	FUNC12(" -> %d\n", id);
	FUNC13(id, next->pgd);
	FUNC16(&context_lock);
}