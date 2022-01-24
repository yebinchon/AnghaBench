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
typedef  int u32 ;
struct TYPE_2__ {int msr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMULATED_MTMSRWE_EXITS ; 
 int MSR_PR ; 
 int MSR_WE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct kvm_vcpu *vcpu, u32 new_msr)
{
	if ((new_msr & MSR_PR) != (vcpu->arch.msr & MSR_PR))
		FUNC1(vcpu, new_msr & MSR_PR);

	vcpu->arch.msr = new_msr;

	if (vcpu->arch.msr & MSR_WE) {
		FUNC0(vcpu);
		FUNC2(vcpu, EMULATED_MTMSRWE_EXITS);
	};
}