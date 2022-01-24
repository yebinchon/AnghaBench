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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCPU_SREG_CS ; 
 int /*<<< orphan*/  VCPU_SREG_DS ; 
 int /*<<< orphan*/  VCPU_SREG_ES ; 
 int /*<<< orphan*/  VCPU_SREG_FS ; 
 int /*<<< orphan*/  VCPU_SREG_GS ; 
 int /*<<< orphan*/  VCPU_SREG_SS ; 
 int /*<<< orphan*/  X86_CR0_PE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 

__attribute__((used)) static bool FUNC8(struct kvm_vcpu *vcpu)
{
	/* real mode guest state checks */
	if (!FUNC3(vcpu, X86_CR0_PE)) {
		if (!FUNC5(vcpu, VCPU_SREG_CS))
			return false;
		if (!FUNC5(vcpu, VCPU_SREG_SS))
			return false;
		if (!FUNC5(vcpu, VCPU_SREG_DS))
			return false;
		if (!FUNC5(vcpu, VCPU_SREG_ES))
			return false;
		if (!FUNC5(vcpu, VCPU_SREG_FS))
			return false;
		if (!FUNC5(vcpu, VCPU_SREG_GS))
			return false;
	} else {
	/* protected mode guest state checks */
		if (!FUNC1(vcpu))
			return false;
		if (!FUNC0(vcpu))
			return false;
		if (!FUNC6(vcpu))
			return false;
		if (!FUNC2(vcpu, VCPU_SREG_DS))
			return false;
		if (!FUNC2(vcpu, VCPU_SREG_ES))
			return false;
		if (!FUNC2(vcpu, VCPU_SREG_FS))
			return false;
		if (!FUNC2(vcpu, VCPU_SREG_GS))
			return false;
		if (!FUNC7(vcpu))
			return false;
		if (!FUNC4(vcpu))
			return false;
	}
	/* TODO:
	 * - Add checks on RIP
	 * - Add checks on RFLAGS
	 */

	return true;
}