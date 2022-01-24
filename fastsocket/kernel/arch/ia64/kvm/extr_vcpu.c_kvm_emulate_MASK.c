#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;
struct TYPE_37__ {unsigned long inst; } ;
typedef  TYPE_1__ INST64 ;

/* Variables and functions */
#define  EVENT_BSW_0 167 
#define  EVENT_BSW_1 166 
#define  EVENT_COVER 165 
#define  EVENT_ITC_D 164 
#define  EVENT_ITC_I 163 
#define  EVENT_ITR_D 162 
#define  EVENT_ITR_I 161 
#define  EVENT_MOV_FROM_AR 160 
#define  EVENT_MOV_FROM_CPUID 159 
#define  EVENT_MOV_FROM_CR 158 
#define  EVENT_MOV_FROM_DBR 157 
#define  EVENT_MOV_FROM_IBR 156 
#define  EVENT_MOV_FROM_PKR 155 
#define  EVENT_MOV_FROM_PMC 154 
#define  EVENT_MOV_FROM_PSR 153 
#define  EVENT_MOV_FROM_RR 152 
#define  EVENT_MOV_TO_AR 151 
#define  EVENT_MOV_TO_AR_IMM 150 
#define  EVENT_MOV_TO_CR 149 
#define  EVENT_MOV_TO_DBR 148 
#define  EVENT_MOV_TO_IBR 147 
#define  EVENT_MOV_TO_PKR 146 
#define  EVENT_MOV_TO_PMC 145 
#define  EVENT_MOV_TO_PMD 144 
#define  EVENT_MOV_TO_PSR 143 
#define  EVENT_MOV_TO_RR 142 
#define  EVENT_PTC_E 141 
#define  EVENT_PTC_G 140 
#define  EVENT_PTC_GA 139 
#define  EVENT_PTC_L 138 
#define  EVENT_PTR_D 137 
#define  EVENT_PTR_I 136 
#define  EVENT_RFI 135 
#define  EVENT_RSM 134 
#define  EVENT_SSM 133 
#define  EVENT_TAK 132 
#define  EVENT_THASH 131 
#define  EVENT_TPA 130 
#define  EVENT_TTAG 129 
#define  EVENT_VMSW 128 
 unsigned long IA64_FAULT ; 
 unsigned long IA64_NO_FAULT ; 
 unsigned long FUNC0 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC22 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC23 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC24 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC25 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC26 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC27 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC28 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC29 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC30 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC31 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC32 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC33 (struct kvm_vcpu*,TYPE_1__) ; 
 unsigned long FUNC34 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC35 (struct kvm_vcpu*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC36 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC37 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC38 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC39 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC40 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC41 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC42 (struct kvm_vcpu*) ; 

void FUNC43(struct kvm_vcpu *vcpu, struct kvm_pt_regs *regs)
{
	unsigned long status, cause, opcode ;
	INST64 inst;

	status = IA64_NO_FAULT;
	cause = FUNC0(vcpu, cause);
	opcode = FUNC0(vcpu, opcode);
	inst.inst = opcode;
	/*
	 * Switch to actual virtual rid in rr0 and rr4,
	 * which is required by some tlb related instructions.
	 */
	FUNC36(vcpu);

	switch (cause) {
	case EVENT_RSM:
		FUNC30(vcpu, inst);
		break;
	case EVENT_SSM:
		FUNC31(vcpu, inst);
		break;
	case EVENT_MOV_TO_PSR:
		FUNC22(vcpu, inst);
		break;
	case EVENT_MOV_FROM_PSR:
		FUNC12(vcpu, inst);
		break;
	case EVENT_MOV_FROM_CR:
		FUNC7(vcpu, inst);
		break;
	case EVENT_MOV_TO_CR:
		FUNC16(vcpu, inst);
		break;
	case EVENT_BSW_0:
		FUNC38(vcpu);
		break;
	case EVENT_BSW_1:
		FUNC39(vcpu);
		break;
	case EVENT_COVER:
		FUNC40(vcpu);
		break;
	case EVENT_RFI:
		FUNC42(vcpu);
		break;
	case EVENT_ITR_D:
		FUNC3(vcpu, inst);
		break;
	case EVENT_ITR_I:
		FUNC4(vcpu, inst);
		break;
	case EVENT_PTR_D:
		FUNC28(vcpu, inst);
		break;
	case EVENT_PTR_I:
		FUNC29(vcpu, inst);
		break;
	case EVENT_ITC_D:
		FUNC1(vcpu, inst);
		break;
	case EVENT_ITC_I:
		FUNC2(vcpu, inst);
		break;
	case EVENT_PTC_L:
		FUNC27(vcpu, inst);
		break;
	case EVENT_PTC_G:
		FUNC25(vcpu, inst);
		break;
	case EVENT_PTC_GA:
		FUNC26(vcpu, inst);
		break;
	case EVENT_PTC_E:
		FUNC24(vcpu, inst);
		break;
	case EVENT_MOV_TO_RR:
		FUNC23(vcpu, inst);
		break;
	case EVENT_MOV_FROM_RR:
		FUNC13(vcpu, inst);
		break;
	case EVENT_THASH:
		FUNC33(vcpu, inst);
		break;
	case EVENT_TTAG:
		FUNC35(vcpu, inst);
		break;
	case EVENT_TPA:
		status = FUNC34(vcpu, inst);
		break;
	case EVENT_TAK:
		FUNC32(vcpu, inst);
		break;
	case EVENT_MOV_TO_AR_IMM:
		FUNC14(vcpu, inst);
		break;
	case EVENT_MOV_TO_AR:
		FUNC15(vcpu, inst);
		break;
	case EVENT_MOV_FROM_AR:
		FUNC5(vcpu, inst);
		break;
	case EVENT_MOV_TO_DBR:
		FUNC17(vcpu, inst);
		break;
	case EVENT_MOV_TO_IBR:
		FUNC18(vcpu, inst);
		break;
	case EVENT_MOV_TO_PMC:
		FUNC20(vcpu, inst);
		break;
	case EVENT_MOV_TO_PMD:
		FUNC21(vcpu, inst);
		break;
	case EVENT_MOV_TO_PKR:
		FUNC19(vcpu, inst);
		break;
	case EVENT_MOV_FROM_DBR:
		FUNC8(vcpu, inst);
		break;
	case EVENT_MOV_FROM_IBR:
		FUNC9(vcpu, inst);
		break;
	case EVENT_MOV_FROM_PMC:
		FUNC11(vcpu, inst);
		break;
	case EVENT_MOV_FROM_PKR:
		FUNC10(vcpu, inst);
		break;
	case EVENT_MOV_FROM_CPUID:
		FUNC6(vcpu, inst);
		break;
	case EVENT_VMSW:
		status = IA64_FAULT;
		break;
	default:
		break;
	};
	/*Assume all status is NO_FAULT ?*/
	if (status == IA64_NO_FAULT && cause != EVENT_RFI)
		FUNC41(vcpu);

	FUNC37(vcpu);
}