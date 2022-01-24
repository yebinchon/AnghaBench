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
struct kvm_vcpu {int /*<<< orphan*/  kvm; struct kvm_run* run; } ;
struct kvm_run {int if_flag; int ready_for_interrupt_injection; int /*<<< orphan*/  apic_base; int /*<<< orphan*/  cr8; } ;
struct TYPE_2__ {int (* get_rflags ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int X86_EFLAGS_IF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 TYPE_1__* kvm_x86_ops ; 
 int FUNC6 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu)
{
	struct kvm_run *kvm_run = vcpu->run;

	kvm_run->if_flag = (kvm_x86_ops->get_rflags(vcpu) & X86_EFLAGS_IF) != 0;
	kvm_run->cr8 = FUNC5(vcpu);
	kvm_run->apic_base = FUNC4(vcpu);
	if (FUNC0(vcpu->kvm))
		kvm_run->ready_for_interrupt_injection = 1;
	else
		kvm_run->ready_for_interrupt_injection =
			FUNC1(vcpu) &&
			!FUNC2(vcpu) &&
			!FUNC3(vcpu);
}