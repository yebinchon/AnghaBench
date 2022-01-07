
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {int hid1; int hid0; int l1csr1; int mas7; int mas6; int mas4; int mas3; int mas2; int mas1; int mas0; int * pid; } ;
struct TYPE_2__ {int * gpr; int * ivor; int pid; int shadow_pid; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 size_t BOOKE_IRQPRIO_PERFORMANCE_MONITOR ;
 size_t BOOKE_IRQPRIO_SPE_FP_DATA ;
 size_t BOOKE_IRQPRIO_SPE_FP_ROUND ;
 size_t BOOKE_IRQPRIO_SPE_UNAVAIL ;
 int EMULATE_DONE ;
 int kvmppc_booke_emulate_mtspr (struct kvm_vcpu*,int,int) ;
 int kvmppc_e500_emul_mt_mmucsr0 (struct kvmppc_vcpu_e500*,int ) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

int kvmppc_core_emulate_mtspr(struct kvm_vcpu *vcpu, int sprn, int rs)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 int emulated = EMULATE_DONE;

 switch (sprn) {
 case 130:
  vcpu_e500->pid[0] = vcpu->arch.shadow_pid =
   vcpu->arch.pid = vcpu->arch.gpr[rs];
  break;
 case 129:
  vcpu_e500->pid[1] = vcpu->arch.gpr[rs]; break;
 case 128:
  vcpu_e500->pid[2] = vcpu->arch.gpr[rs]; break;
 case 138:
  vcpu_e500->mas0 = vcpu->arch.gpr[rs]; break;
 case 137:
  vcpu_e500->mas1 = vcpu->arch.gpr[rs]; break;
 case 136:
  vcpu_e500->mas2 = vcpu->arch.gpr[rs]; break;
 case 135:
  vcpu_e500->mas3 = vcpu->arch.gpr[rs]; break;
 case 134:
  vcpu_e500->mas4 = vcpu->arch.gpr[rs]; break;
 case 133:
  vcpu_e500->mas6 = vcpu->arch.gpr[rs]; break;
 case 132:
  vcpu_e500->mas7 = vcpu->arch.gpr[rs]; break;
 case 139:
  vcpu_e500->l1csr1 = vcpu->arch.gpr[rs]; break;
 case 145:
  vcpu_e500->hid0 = vcpu->arch.gpr[rs]; break;
 case 144:
  vcpu_e500->hid1 = vcpu->arch.gpr[rs]; break;

 case 131:
  emulated = kvmppc_e500_emul_mt_mmucsr0(vcpu_e500,
    vcpu->arch.gpr[rs]);
  break;


 case 143:
  vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_UNAVAIL] = vcpu->arch.gpr[rs];
  break;
 case 142:
  vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_FP_DATA] = vcpu->arch.gpr[rs];
  break;
 case 141:
  vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_FP_ROUND] = vcpu->arch.gpr[rs];
  break;
 case 140:
  vcpu->arch.ivor[BOOKE_IRQPRIO_PERFORMANCE_MONITOR] = vcpu->arch.gpr[rs];
  break;

 default:
  emulated = kvmppc_booke_emulate_mtspr(vcpu, sprn, rs);
 }

 return emulated;
}
