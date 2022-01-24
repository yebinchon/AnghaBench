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
struct vcpu_vmx {int invalid_state_emulation_result; } ;
struct kvm_vcpu {int dummy; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int EMULATE_DO_MMIO ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 struct vcpu_vmx* FUNC10 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC11(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC10(vcpu);
	enum emulation_result err = EMULATE_DONE;

	FUNC4();
	FUNC7();

	while (!FUNC1(vcpu)) {
		err = FUNC0(vcpu, 0);

		if (err == EMULATE_DO_MMIO)
			break;

		if (err != EMULATE_DONE) {
			FUNC2(vcpu, "emulation failure");
			break;
		}

		if (FUNC9(current))
			break;
		if (FUNC5())
			FUNC8();
	}

	FUNC6();
	FUNC3();

	vmx->invalid_state_emulation_result = err;
}