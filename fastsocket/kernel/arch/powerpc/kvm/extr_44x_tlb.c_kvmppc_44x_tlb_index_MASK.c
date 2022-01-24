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
struct kvmppc_vcpu_44x {struct kvmppc_44x_tlbe* guest_tlb; } ;
struct kvmppc_44x_tlbe {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef  scalar_t__ gva_t ;

/* Variables and functions */
 int FUNC0 (struct kvmppc_44x_tlbe*) ; 
 scalar_t__ FUNC1 (struct kvmppc_44x_tlbe*) ; 
 scalar_t__ FUNC2 (struct kvmppc_44x_tlbe*) ; 
 unsigned int FUNC3 (struct kvmppc_44x_tlbe*) ; 
 unsigned int FUNC4 (struct kvmppc_44x_tlbe*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvmppc_44x_tlbe*) ; 
 struct kvmppc_vcpu_44x* FUNC6 (struct kvm_vcpu*) ; 

int FUNC7(struct kvm_vcpu *vcpu, gva_t eaddr, unsigned int pid,
                         unsigned int as)
{
	struct kvmppc_vcpu_44x *vcpu_44x = FUNC6(vcpu);
	int i;

	/* XXX Replace loop with fancy data structures. */
	for (i = 0; i < FUNC0(vcpu_44x->guest_tlb); i++) {
		struct kvmppc_44x_tlbe *tlbe = &vcpu_44x->guest_tlb[i];
		unsigned int tid;

		if (eaddr < FUNC1(tlbe))
			continue;

		if (eaddr > FUNC2(tlbe))
			continue;

		tid = FUNC3(tlbe);
		if (tid && (tid != pid))
			continue;

		if (!FUNC5(tlbe))
			continue;

		if (FUNC4(tlbe) != as)
			continue;

		return i;
	}

	return -1;
}