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
typedef  int u32 ;
struct tlbe {int dummy; } ;
struct kvmppc_vcpu_e500 {unsigned int* guest_tlb_size; struct tlbe** shadow_tlb; } ;
typedef  scalar_t__ gva_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tlbe*) ; 
 scalar_t__ FUNC1 (struct tlbe*) ; 
 unsigned int FUNC2 (struct tlbe*) ; 
 int /*<<< orphan*/  FUNC3 (struct tlbe*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmppc_vcpu_e500*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvmppc_vcpu_e500*,int,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct kvmppc_vcpu_e500 *vcpu_e500,
		gva_t eaddr, gva_t eend, u32 tid)
{
	unsigned int pid = tid & 0xff;
	unsigned int i;

	/* XXX Replace loop with fancy data structures. */
	for (i = 0; i < vcpu_e500->guest_tlb_size[1]; i++) {
		struct tlbe *stlbe = &vcpu_e500->shadow_tlb[1][i];
		unsigned int tid;

		if (!FUNC3(stlbe))
			continue;

		if (eend < FUNC0(stlbe))
			continue;

		if (eaddr > FUNC1(stlbe))
			continue;

		tid = FUNC2(stlbe);
		if (tid && (tid != pid))
			continue;

		FUNC4(vcpu_e500, 1, i);
		FUNC5(vcpu_e500, 1, i);
	}
}