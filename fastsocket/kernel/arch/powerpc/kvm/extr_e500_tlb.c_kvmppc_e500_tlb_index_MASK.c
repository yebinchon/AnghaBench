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
struct tlbe {int dummy; } ;
struct kvmppc_vcpu_e500 {int* guest_tlb_size; struct tlbe** guest_tlb; } ;
typedef  scalar_t__ gva_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tlbe*) ; 
 scalar_t__ FUNC1 (struct tlbe*) ; 
 unsigned int FUNC2 (struct tlbe*) ; 
 int FUNC3 (struct tlbe*) ; 
 int /*<<< orphan*/  FUNC4 (struct tlbe*) ; 

__attribute__((used)) static int FUNC5(struct kvmppc_vcpu_e500 *vcpu_e500,
		gva_t eaddr, int tlbsel, unsigned int pid, int as)
{
	int i;

	/* XXX Replace loop with fancy data structures. */
	for (i = 0; i < vcpu_e500->guest_tlb_size[tlbsel]; i++) {
		struct tlbe *tlbe = &vcpu_e500->guest_tlb[tlbsel][i];
		unsigned int tid;

		if (eaddr < FUNC0(tlbe))
			continue;

		if (eaddr > FUNC1(tlbe))
			continue;

		tid = FUNC2(tlbe);
		if (tid && (tid != pid))
			continue;

		if (!FUNC4(tlbe))
			continue;

		if (FUNC3(tlbe) != as && as != -1)
			continue;

		return i;
	}

	return -1;
}