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

/* Variables and functions */
 int /*<<< orphan*/  KVM_VMM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ kvm_vm_buffer ; 
 scalar_t__ kvm_vmm_base ; 
 scalar_t__ kvm_vsa_base ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (kvm_vmm_base) {
		/*Zero this area before free to avoid bits leak!!*/
		FUNC2((void *)kvm_vmm_base, 0, KVM_VMM_SIZE);
		FUNC0(kvm_vmm_base, FUNC1(KVM_VMM_SIZE));
		kvm_vmm_base  = 0;
		kvm_vm_buffer = 0;
		kvm_vsa_base = 0;
	}
}