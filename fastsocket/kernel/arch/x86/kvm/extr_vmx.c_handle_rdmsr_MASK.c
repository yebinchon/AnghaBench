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
typedef  unsigned int u64 ;
typedef  unsigned int u32 ;
struct TYPE_2__ {unsigned int* regs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 size_t VCPU_REGS_RAX ; 
 size_t VCPU_REGS_RCX ; 
 size_t VCPU_REGS_RDX ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	u32 ecx = vcpu->arch.regs[VCPU_REGS_RCX];
	u64 data;

	if (FUNC3(vcpu, ecx, &data)) {
		FUNC0(vcpu, 0);
		return 1;
	}

	FUNC2(ecx, data);

	/* FIXME: handling of bits 32:63 of rax, rdx */
	vcpu->arch.regs[VCPU_REGS_RAX] = data & -1u;
	vcpu->arch.regs[VCPU_REGS_RDX] = (data >> 32) & -1u;
	FUNC1(vcpu);
	return 1;
}