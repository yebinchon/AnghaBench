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
struct kvmppc_vcpu_e500 {struct tlbe** shadow_tlb; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_MAS0 ; 
 int /*<<< orphan*/  FUNC2 (struct tlbe*) ; 
 scalar_t__ FUNC3 (struct tlbe*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 () ; 
 struct kvmppc_vcpu_e500* FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(struct kvm_vcpu *vcpu, int cpu)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC9(vcpu);
	int i;
	unsigned register mas0;

	/* Load all valid TLB1 entries to reduce guest tlb miss fault */
	FUNC4();
	mas0 = FUNC6(SPRN_MAS0);
	for (i = 0; i < FUNC8(); i++) {
		struct tlbe *stlbe = &vcpu_e500->shadow_tlb[1][i];

		if (FUNC3(stlbe)) {
			FUNC7(SPRN_MAS0, FUNC1(1)
					| FUNC0(FUNC10(i)));
			FUNC2(stlbe);
		}
	}
	FUNC7(SPRN_MAS0, mas0);
	FUNC5();
}