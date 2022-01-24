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
struct TYPE_2__ {int /*<<< orphan*/  xcr0; } ;
struct kvm_vcpu {int guest_xcr0_loaded; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_CR4_OSXSAVE ; 
 int /*<<< orphan*/  XCR_XFEATURE_ENABLED_MASK ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	if (FUNC0(vcpu, X86_CR4_OSXSAVE) &&
			!vcpu->guest_xcr0_loaded) {
		/* kvm_set_xcr() also depends on this */
		FUNC1(XCR_XFEATURE_ENABLED_MASK, vcpu->arch.xcr0);
		vcpu->guest_xcr0_loaded = 1;
	}
}