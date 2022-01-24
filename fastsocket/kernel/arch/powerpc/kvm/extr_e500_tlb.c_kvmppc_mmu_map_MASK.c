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
typedef  int /*<<< orphan*/  u64 ;
struct tlbe {int dummy; } ;
struct kvmppc_vcpu_e500 {struct tlbe** guest_tlb; } ;
struct kvm_vcpu {int dummy; } ;
typedef  int gpa_t ;
typedef  int gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int PAGE_SHIFT ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct kvmppc_vcpu_e500*,int /*<<< orphan*/ ,int,struct tlbe*) ; 
 int FUNC3 (unsigned int) ; 
 struct kvmppc_vcpu_e500* FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvmppc_vcpu_e500*,int,int) ; 

void FUNC6(struct kvm_vcpu *vcpu, u64 eaddr, gpa_t gpaddr,
			unsigned int index)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC4(vcpu);
	int tlbsel = FUNC3(index);
	int esel = FUNC1(index);
	int stlbsel, sesel;

	switch (tlbsel) {
	case 0:
		stlbsel = 0;
		sesel = esel;
		break;

	case 1: {
		gfn_t gfn = gpaddr >> PAGE_SHIFT;
		struct tlbe *gtlbe
			= &vcpu_e500->guest_tlb[tlbsel][esel];

		stlbsel = 1;
		sesel = FUNC2(vcpu_e500, eaddr, gfn, gtlbe);
		break;
	}

	default:
		FUNC0();
		break;
	}
	FUNC5(vcpu_e500, stlbsel, sesel);
}