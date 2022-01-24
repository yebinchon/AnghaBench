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
struct TYPE_2__ {int /*<<< orphan*/ * regs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct vcpu_svm {struct kvm_vcpu vcpu; scalar_t__ next_rip; } ;

/* Variables and functions */
 size_t VCPU_REGS_RAX ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC4(struct vcpu_svm *svm)
{
	struct kvm_vcpu *vcpu = &svm->vcpu;
	FUNC2("INVLPGA\n");

	/* Let's treat INVLPGA the same as INVLPG (can be optimized!) */
	FUNC0(vcpu, vcpu->arch.regs[VCPU_REGS_RAX]);

	svm->next_rip = FUNC1(&svm->vcpu) + 3;
	FUNC3(&svm->vcpu);
	return 1;
}