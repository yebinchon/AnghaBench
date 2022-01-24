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
struct vcpu_vmx {int soft_vnmi_blocked; scalar_t__ vnmi_blocked_time; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int /*<<< orphan*/  GUEST_INTR_STATE_NMI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct vcpu_vmx* FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu, bool masked)
{
	struct vcpu_vmx *vmx = FUNC1(vcpu);

	if (!FUNC0()) {
		if (vmx->soft_vnmi_blocked != masked) {
			vmx->soft_vnmi_blocked = masked;
			vmx->vnmi_blocked_time = 0;
		}
	} else {
		if (masked)
			FUNC3(GUEST_INTERRUPTIBILITY_INFO,
				      GUEST_INTR_STATE_NMI);
		else
			FUNC2(GUEST_INTERRUPTIBILITY_INFO,
					GUEST_INTR_STATE_NMI);
	}
}