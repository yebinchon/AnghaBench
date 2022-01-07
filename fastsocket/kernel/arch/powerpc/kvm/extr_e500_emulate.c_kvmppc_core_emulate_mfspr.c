
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {int* pid; int mas0; int mas1; int mas2; int mas3; int mas4; int mas6; int mas7; int* guest_tlb_size; int l1csr1; int hid0; int hid1; } ;
struct TYPE_2__ {int* gpr; int* ivor; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 size_t BOOKE_IRQPRIO_PERFORMANCE_MONITOR ;
 size_t BOOKE_IRQPRIO_SPE_FP_DATA ;
 size_t BOOKE_IRQPRIO_SPE_FP_ROUND ;
 size_t BOOKE_IRQPRIO_SPE_UNAVAIL ;
 int EMULATE_DONE ;
 int kvmppc_booke_emulate_mfspr (struct kvm_vcpu*,int,int) ;
 void* mfspr (int const) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

int kvmppc_core_emulate_mfspr(struct kvm_vcpu *vcpu, int sprn, int rt)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 int emulated = EMULATE_DONE;

 switch (sprn) {
 case 132:
  vcpu->arch.gpr[rt] = vcpu_e500->pid[0]; break;
 case 131:
  vcpu->arch.gpr[rt] = vcpu_e500->pid[1]; break;
 case 130:
  vcpu->arch.gpr[rt] = vcpu_e500->pid[2]; break;
 case 141:
  vcpu->arch.gpr[rt] = vcpu_e500->mas0; break;
 case 140:
  vcpu->arch.gpr[rt] = vcpu_e500->mas1; break;
 case 139:
  vcpu->arch.gpr[rt] = vcpu_e500->mas2; break;
 case 138:
  vcpu->arch.gpr[rt] = vcpu_e500->mas3; break;
 case 137:
  vcpu->arch.gpr[rt] = vcpu_e500->mas4; break;
 case 136:
  vcpu->arch.gpr[rt] = vcpu_e500->mas6; break;
 case 135:
  vcpu->arch.gpr[rt] = vcpu_e500->mas7; break;

 case 129:
  vcpu->arch.gpr[rt] = mfspr(129);
  vcpu->arch.gpr[rt] &= ~0xfffUL;
  vcpu->arch.gpr[rt] |= vcpu_e500->guest_tlb_size[0];
  break;

 case 128:
  vcpu->arch.gpr[rt] = mfspr(128);
  vcpu->arch.gpr[rt] &= ~0xfffUL;
  vcpu->arch.gpr[rt] |= vcpu_e500->guest_tlb_size[1];
  break;

 case 142:
  vcpu->arch.gpr[rt] = vcpu_e500->l1csr1; break;
 case 148:
  vcpu->arch.gpr[rt] = vcpu_e500->hid0; break;
 case 147:
  vcpu->arch.gpr[rt] = vcpu_e500->hid1; break;

 case 133:
  vcpu->arch.gpr[rt] = 0; break;

 case 134:
  vcpu->arch.gpr[rt] = mfspr(134); break;


 case 146:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_UNAVAIL];
  break;
 case 145:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_FP_DATA];
  break;
 case 144:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_FP_ROUND];
  break;
 case 143:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_PERFORMANCE_MONITOR];
  break;
 default:
  emulated = kvmppc_booke_emulate_mfspr(vcpu, sprn, rt);
 }

 return emulated;
}
