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
struct vcpu_vmx {int /*<<< orphan*/  guest_msrs; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vcpu_vmx*) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 struct vcpu_vmx* FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC4(vcpu);

	FUNC0(vmx);
	FUNC5(vcpu);
	FUNC1(vmx->guest_msrs);
	FUNC3(vcpu);
	FUNC2(kvm_vcpu_cache, vmx);
}