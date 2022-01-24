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
typedef  int u64 ;
typedef  unsigned int u32 ;
struct msr_data {int data; unsigned int index; int host_initiated; } ;
struct TYPE_2__ {unsigned int* regs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 size_t VCPU_REGS_RAX ; 
 size_t VCPU_REGS_RCX ; 
 size_t VCPU_REGS_RDX ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,struct msr_data*) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	struct msr_data msr;
	u32 ecx = vcpu->arch.regs[VCPU_REGS_RCX];
	u64 data = (vcpu->arch.regs[VCPU_REGS_RAX] & -1u)
		| ((u64)(vcpu->arch.regs[VCPU_REGS_RDX] & -1u) << 32);

	FUNC2(ecx, data);

	msr.data = data;
	msr.index = ecx;
	msr.host_initiated = false;
	if (FUNC3(vcpu, &msr) != 0) {
		FUNC0(vcpu, 0);
		return 1;
	}

	FUNC1(vcpu);
	return 1;
}