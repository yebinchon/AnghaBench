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
struct vcpu_vmx {int /*<<< orphan*/ * vmcs; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vcpu_vmx* FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu_vmx*) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC1(vcpu);

	if (vmx->vmcs) {
		FUNC2(vmx);
		FUNC0(vmx->vmcs);
		vmx->vmcs = NULL;
	}
}