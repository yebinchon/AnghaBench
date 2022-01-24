#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union smp_flush_state {scalar_t__ flush_mm; scalar_t__ flush_va; int /*<<< orphan*/  flush_cpumask; } ;
struct pt_regs {unsigned int orig_ax; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/  active_mm; } ;
struct TYPE_3__ {scalar_t__ active_mm; } ;

/* Variables and functions */
 unsigned int INVALIDATE_TLB_VECTOR_START ; 
 scalar_t__ TLBSTATE_OK ; 
 scalar_t__ TLB_FLUSH_ALL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ cpu_tlbstate ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 union smp_flush_state* flush_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_tlb_count ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 unsigned int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct pt_regs *regs)
{
	unsigned int cpu;
	unsigned int sender;
	union smp_flush_state *f;

	cpu = FUNC11();

#ifdef CONFIG_X86_32
	if (current->active_mm)
		load_user_cs_desc(cpu, current->active_mm);
#endif

	/*
	 * orig_rax contains the negated interrupt vector.
	 * Use that to determine where the sender put the data.
	 */
	sender = ~regs->orig_ax - INVALIDATE_TLB_VECTOR_START;
	f = &flush_state[sender];

	if (!FUNC3(cpu, FUNC12(f->flush_cpumask)))
		goto out;
		/*
		 * This was a BUG() but until someone can quote me the
		 * line from the intel manual that guarantees an IPI to
		 * multiple CPUs is retried _only_ on the erroring CPUs
		 * its staying as a return
		 *
		 * BUG();
		 */

	if (f->flush_mm == FUNC8(cpu_tlbstate.active_mm)) {
		if (FUNC8(cpu_tlbstate.state) == TLBSTATE_OK) {
			if (f->flush_va == TLB_FLUSH_ALL)
				FUNC7();
			else
				FUNC0(f->flush_va);
		} else
			FUNC5(cpu);
	}
out:
	FUNC1();
	FUNC10();
	FUNC2(cpu, FUNC12(f->flush_cpumask));
	FUNC9();
	FUNC4(irq_tlb_count);
}