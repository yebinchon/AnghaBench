#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct TYPE_3__ {unsigned long cr3; } ;
struct kvm_vcpu {TYPE_2__* run; TYPE_1__ arch; int /*<<< orphan*/  kvm; } ;
struct TYPE_4__ {scalar_t__ exit_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 scalar_t__ KVM_EXIT_SET_TPR ; 
 unsigned long LMSW_SOURCE_DATA_SHIFT ; 
 int /*<<< orphan*/  X86_CR0_TS ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int,unsigned long) ; 
 int FUNC9 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC10 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC11 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,void*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 unsigned long FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct kvm_vcpu *vcpu)
{
	unsigned long exit_qualification, val;
	int cr;
	int reg;
	int err;

	exit_qualification = FUNC17(EXIT_QUALIFICATION);
	cr = exit_qualification & 15;
	reg = (exit_qualification >> 8) & 15;
	switch ((exit_qualification >> 4) & 3) {
	case 0: /* mov to cr */
		val = FUNC7(vcpu, reg);
		FUNC16(cr, val);
		switch (cr) {
		case 0:
			err = FUNC9(vcpu, val);
			FUNC0(vcpu, err);
			return 1;
		case 3:
			err = FUNC10(vcpu, val);
			FUNC0(vcpu, err);
			return 1;
		case 4:
			err = FUNC11(vcpu, val);
			FUNC0(vcpu, err);
			return 1;
		case 8: {
				u8 cr8_prev = FUNC2(vcpu);
				u8 cr8 = FUNC7(vcpu, reg);
				if (FUNC12(vcpu, cr8))
					FUNC3(vcpu, 0);
				else
					FUNC14(vcpu);
				if (FUNC1(vcpu->kvm))
					return 1;
				if (cr8_prev <= cr8)
					return 1;
				vcpu->run->exit_reason = KVM_EXIT_SET_TPR;
				return 0;
			}
		};
		break;
	case 2: /* clts */
		FUNC18(vcpu, FUNC6(vcpu, ~X86_CR0_TS));
		FUNC16(0, FUNC5(vcpu));
		FUNC14(vcpu);
		return 1;
	case 1: /*mov from cr*/
		switch (cr) {
		case 3:
			FUNC8(vcpu, reg, vcpu->arch.cr3);
			FUNC15(cr, vcpu->arch.cr3);
			FUNC14(vcpu);
			return 1;
		case 8:
			val = FUNC2(vcpu);
			FUNC8(vcpu, reg, val);
			FUNC15(cr, val);
			FUNC14(vcpu);
			return 1;
		}
		break;
	case 3: /* lmsw */
		val = (exit_qualification >> LMSW_SOURCE_DATA_SHIFT) & 0x0f;
		FUNC16(0, (FUNC5(vcpu) & ~0xful) | val);
		FUNC4(vcpu, val);

		FUNC14(vcpu);
		return 1;
	default:
		break;
	}
	vcpu->run->exit_reason = 0;
	FUNC13(vcpu, "unhandled control register: op %d cr %d\n",
	       (int)(exit_qualification >> 4) & 3, cr);
	return 0;
}