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
struct kvmppc_vcpu_e500 {int* pid; int mas0; int mas1; int mas2; int mas3; int mas4; int mas6; int mas7; int* guest_tlb_size; int l1csr1; int hid0; int hid1; } ;
struct TYPE_2__ {int* gpr; int* ivor; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 size_t BOOKE_IRQPRIO_PERFORMANCE_MONITOR ; 
 size_t BOOKE_IRQPRIO_SPE_FP_DATA ; 
 size_t BOOKE_IRQPRIO_SPE_FP_ROUND ; 
 size_t BOOKE_IRQPRIO_SPE_UNAVAIL ; 
 int EMULATE_DONE ; 
#define  SPRN_HID0 148 
#define  SPRN_HID1 147 
#define  SPRN_IVOR32 146 
#define  SPRN_IVOR33 145 
#define  SPRN_IVOR34 144 
#define  SPRN_IVOR35 143 
#define  SPRN_L1CSR1 142 
#define  SPRN_MAS0 141 
#define  SPRN_MAS1 140 
#define  SPRN_MAS2 139 
#define  SPRN_MAS3 138 
#define  SPRN_MAS4 137 
#define  SPRN_MAS6 136 
#define  SPRN_MAS7 135 
#define  SPRN_MMUCFG 134 
#define  SPRN_MMUCSR0 133 
#define  SPRN_PID 132 
#define  SPRN_PID1 131 
#define  SPRN_PID2 130 
#define  SPRN_TLB0CFG 129 
#define  SPRN_TLB1CFG 128 
 int FUNC0 (struct kvm_vcpu*,int,int) ; 
 void* FUNC1 (int const) ; 
 struct kvmppc_vcpu_e500* FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu, int sprn, int rt)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC2(vcpu);
	int emulated = EMULATE_DONE;

	switch (sprn) {
	case SPRN_PID:
		vcpu->arch.gpr[rt] = vcpu_e500->pid[0]; break;
	case SPRN_PID1:
		vcpu->arch.gpr[rt] = vcpu_e500->pid[1]; break;
	case SPRN_PID2:
		vcpu->arch.gpr[rt] = vcpu_e500->pid[2]; break;
	case SPRN_MAS0:
		vcpu->arch.gpr[rt] = vcpu_e500->mas0; break;
	case SPRN_MAS1:
		vcpu->arch.gpr[rt] = vcpu_e500->mas1; break;
	case SPRN_MAS2:
		vcpu->arch.gpr[rt] = vcpu_e500->mas2; break;
	case SPRN_MAS3:
		vcpu->arch.gpr[rt] = vcpu_e500->mas3; break;
	case SPRN_MAS4:
		vcpu->arch.gpr[rt] = vcpu_e500->mas4; break;
	case SPRN_MAS6:
		vcpu->arch.gpr[rt] = vcpu_e500->mas6; break;
	case SPRN_MAS7:
		vcpu->arch.gpr[rt] = vcpu_e500->mas7; break;

	case SPRN_TLB0CFG:
		vcpu->arch.gpr[rt] = FUNC1(SPRN_TLB0CFG);
		vcpu->arch.gpr[rt] &= ~0xfffUL;
		vcpu->arch.gpr[rt] |= vcpu_e500->guest_tlb_size[0];
		break;

	case SPRN_TLB1CFG:
		vcpu->arch.gpr[rt] = FUNC1(SPRN_TLB1CFG);
		vcpu->arch.gpr[rt] &= ~0xfffUL;
		vcpu->arch.gpr[rt] |= vcpu_e500->guest_tlb_size[1];
		break;

	case SPRN_L1CSR1:
		vcpu->arch.gpr[rt] = vcpu_e500->l1csr1; break;
	case SPRN_HID0:
		vcpu->arch.gpr[rt] = vcpu_e500->hid0; break;
	case SPRN_HID1:
		vcpu->arch.gpr[rt] = vcpu_e500->hid1; break;

	case SPRN_MMUCSR0:
		vcpu->arch.gpr[rt] = 0; break;

	case SPRN_MMUCFG:
		vcpu->arch.gpr[rt] = FUNC1(SPRN_MMUCFG); break;

	/* extra exceptions */
	case SPRN_IVOR32:
		vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_UNAVAIL];
		break;
	case SPRN_IVOR33:
		vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_FP_DATA];
		break;
	case SPRN_IVOR34:
		vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_FP_ROUND];
		break;
	case SPRN_IVOR35:
		vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_PERFORMANCE_MONITOR];
		break;
	default:
		emulated = FUNC0(vcpu, sprn, rt);
	}

	return emulated;
}