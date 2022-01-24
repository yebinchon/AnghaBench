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
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int CPU_BASED_VIRTUAL_NMI_PENDING ; 
 int /*<<< orphan*/  CPU_BASED_VM_EXEC_CONTROL ; 
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int GUEST_INTR_STATE_STI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu)
{
	u32 cpu_based_vm_exec_control;

	if (!FUNC0()) {
		FUNC1(vcpu);
		return;
	}

	if (FUNC2(GUEST_INTERRUPTIBILITY_INFO) & GUEST_INTR_STATE_STI) {
		FUNC1(vcpu);
		return;
	}
	cpu_based_vm_exec_control = FUNC2(CPU_BASED_VM_EXEC_CONTROL);
	cpu_based_vm_exec_control |= CPU_BASED_VIRTUAL_NMI_PENDING;
	FUNC3(CPU_BASED_VM_EXEC_CONTROL, cpu_based_vm_exec_control);
}