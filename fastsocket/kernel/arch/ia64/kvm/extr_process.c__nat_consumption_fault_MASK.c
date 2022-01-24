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
struct kvm_vcpu {int dummy; } ;
typedef  enum tlb_miss_type { ____Placeholder_tlb_miss_type } tlb_miss_type ;

/* Variables and functions */
 int DATA ; 
 int /*<<< orphan*/  IA64_NAT_CONSUMPTION_VECTOR ; 
 int INSTRUCTION ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu, u64 vadr,
						enum tlb_miss_type t)
{
	/* If vPSR.ic && t == DATA/INST, IFA */
	if (t == DATA || t == INSTRUCTION) {
		/* IFA */
		FUNC1(vcpu, vadr, 1, 0, 0);
	}

	FUNC0(vcpu, IA64_NAT_CONSUMPTION_VECTOR);
}