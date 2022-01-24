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
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_cpuid_entry2 {int /*<<< orphan*/  edx; int /*<<< orphan*/  ecx; int /*<<< orphan*/  ebx; int /*<<< orphan*/  eax; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* skip_emulated_instruction ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VCPU_REGS_RAX ; 
 int /*<<< orphan*/  VCPU_REGS_RBX ; 
 int /*<<< orphan*/  VCPU_REGS_RCX ; 
 int /*<<< orphan*/  VCPU_REGS_RDX ; 
 struct kvm_cpuid_entry2* FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kvm_cpuid_entry2* FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct kvm_vcpu *vcpu)
{
	u32 function, index;
	struct kvm_cpuid_entry2 *best;

	function = FUNC2(vcpu, VCPU_REGS_RAX);
	index = FUNC2(vcpu, VCPU_REGS_RCX);
	FUNC3(vcpu, VCPU_REGS_RAX, 0);
	FUNC3(vcpu, VCPU_REGS_RBX, 0);
	FUNC3(vcpu, VCPU_REGS_RCX, 0);
	FUNC3(vcpu, VCPU_REGS_RDX, 0);
	best = FUNC1(vcpu, function, index);

	if (!best)
		best = FUNC0(vcpu, function, index);

	if (best) {
		FUNC3(vcpu, VCPU_REGS_RAX, best->eax);
		FUNC3(vcpu, VCPU_REGS_RBX, best->ebx);
		FUNC3(vcpu, VCPU_REGS_RCX, best->ecx);
		FUNC3(vcpu, VCPU_REGS_RDX, best->edx);
	}
	kvm_x86_ops->skip_emulated_instruction(vcpu);
	FUNC5(function,
			FUNC2(vcpu, VCPU_REGS_RAX),
			FUNC2(vcpu, VCPU_REGS_RBX),
			FUNC2(vcpu, VCPU_REGS_RCX),
			FUNC2(vcpu, VCPU_REGS_RDX));
}