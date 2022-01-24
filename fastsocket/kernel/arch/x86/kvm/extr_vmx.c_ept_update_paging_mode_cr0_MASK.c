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
struct TYPE_2__ {unsigned long cr0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int CPU_BASED_CR3_LOAD_EXITING ; 
 int CPU_BASED_CR3_STORE_EXITING ; 
 int /*<<< orphan*/  CPU_BASED_VM_EXEC_CONTROL ; 
 unsigned long X86_CR0_PG ; 
 unsigned long X86_CR0_WP ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned long *hw_cr0,
					unsigned long cr0,
					struct kvm_vcpu *vcpu)
{
	if (!(cr0 & X86_CR0_PG)) {
		/* From paging/starting to nonpaging */
		FUNC3(CPU_BASED_VM_EXEC_CONTROL,
			     FUNC2(CPU_BASED_VM_EXEC_CONTROL) |
			     (CPU_BASED_CR3_LOAD_EXITING |
			      CPU_BASED_CR3_STORE_EXITING));
		vcpu->arch.cr0 = cr0;
		FUNC4(vcpu, FUNC1(vcpu));
	} else if (!FUNC0(vcpu)) {
		/* From nonpaging to paging */
		FUNC3(CPU_BASED_VM_EXEC_CONTROL,
			     FUNC2(CPU_BASED_VM_EXEC_CONTROL) &
			     ~(CPU_BASED_CR3_LOAD_EXITING |
			       CPU_BASED_CR3_STORE_EXITING));
		vcpu->arch.cr0 = cr0;
		FUNC4(vcpu, FUNC1(vcpu));
	}

	if (!(cr0 & X86_CR0_WP))
		*hw_cr0 &= ~X86_CR0_WP;
}