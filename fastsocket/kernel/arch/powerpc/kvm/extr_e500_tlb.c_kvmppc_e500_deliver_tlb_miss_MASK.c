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
struct kvmppc_vcpu_e500 {int mas4; int mas0; int mas1; unsigned int mas2; int mas3; int mas6; scalar_t__ mas7; int /*<<< orphan*/ * pid; int /*<<< orphan*/ * guest_tlb_nv; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int MAS1_TS ; 
 int FUNC4 (unsigned int) ; 
 int MAS1_VALID ; 
 unsigned int MAS2_ATTRIB_MASK ; 
 unsigned int MAS2_EPN ; 
 int MAS3_U0 ; 
 int MAS3_U1 ; 
 int MAS3_U2 ; 
 int MAS3_U3 ; 
 int MAS6_SAS ; 
 int MAS6_SPID1 ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 unsigned int FUNC6 (struct kvmppc_vcpu_e500*) ; 
 struct kvmppc_vcpu_e500* FUNC7 (struct kvm_vcpu*) ; 

__attribute__((used)) static inline void FUNC8(struct kvm_vcpu *vcpu,
		unsigned int eaddr, int as)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC7(vcpu);
	unsigned int victim, pidsel, tsized;
	int tlbsel;

	/* since we only have two TLBs, only lower bit is used. */
	tlbsel = (vcpu_e500->mas4 >> 28) & 0x1;
	victim = (tlbsel == 0) ? FUNC6(vcpu_e500) : 0;
	pidsel = (vcpu_e500->mas4 >> 16) & 0xf;
	tsized = (vcpu_e500->mas4 >> 7) & 0x1f;

	vcpu_e500->mas0 = FUNC2(tlbsel) | FUNC0(victim)
		| FUNC1(vcpu_e500->guest_tlb_nv[tlbsel]);
	vcpu_e500->mas1 = MAS1_VALID | (as ? MAS1_TS : 0)
		| FUNC3(vcpu_e500->pid[pidsel])
		| FUNC4(tsized);
	vcpu_e500->mas2 = (eaddr & MAS2_EPN)
		| (vcpu_e500->mas4 & MAS2_ATTRIB_MASK);
	vcpu_e500->mas3 &= MAS3_U0 | MAS3_U1 | MAS3_U2 | MAS3_U3;
	vcpu_e500->mas6 = (vcpu_e500->mas6 & MAS6_SPID1)
		| (FUNC5(vcpu) << 16)
		| (as ? MAS6_SAS : 0);
	vcpu_e500->mas7 = 0;
}