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
union smp_flush_state {unsigned long flush_va; int /*<<< orphan*/  tlbstate_lock; struct mm_struct* flush_mm; int /*<<< orphan*/  flush_cpumask; } ;
struct mm_struct {int dummy; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_IPI_mask ) (int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ INVALIDATE_TLB_VECTOR_START ; 
 unsigned int NUM_INVALIDATE_TLB_VECTORS ; 
 TYPE_1__* apic ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct cpumask const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 union smp_flush_state* flush_state ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(const struct cpumask *cpumask,
				 struct mm_struct *mm, unsigned long va)
{
	unsigned int sender;
	union smp_flush_state *f;

	/* Caller has disabled preemption */
	sender = FUNC4() % NUM_INVALIDATE_TLB_VECTORS;
	f = &flush_state[sender];

	/*
	 * Could avoid this lock when
	 * num_online_cpus() <= NUM_INVALIDATE_TLB_VECTORS, but it is
	 * probably not worth checking this for a cache-hot lock.
	 */
	FUNC5(&f->tlbstate_lock);

	f->flush_mm = mm;
	f->flush_va = va;
	if (FUNC1(FUNC8(f->flush_cpumask), cpumask, FUNC3(FUNC4()))) {
		/*
		 * We have to send the IPI only to
		 * CPUs affected.
		 */
		apic->send_IPI_mask(FUNC8(f->flush_cpumask),
			      INVALIDATE_TLB_VECTOR_START + sender);

		while (!FUNC2(FUNC8(f->flush_cpumask)))
			FUNC0();
	}

	f->flush_mm = NULL;
	f->flush_va = 0;
	FUNC6(&f->tlbstate_lock);
}