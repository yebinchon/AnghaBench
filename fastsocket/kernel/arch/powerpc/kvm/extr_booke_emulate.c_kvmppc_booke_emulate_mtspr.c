
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * gpr; int * ivor; int ivpr; int sprg7; int sprg6; int sprg5; int sprg4; int tcr; int tsr; int dbsr; int dbcr1; int dbcr0; int esr; int dear; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 size_t BOOKE_IRQPRIO_ALIGNMENT ;
 size_t BOOKE_IRQPRIO_AP_UNAVAIL ;
 size_t BOOKE_IRQPRIO_CRITICAL ;
 size_t BOOKE_IRQPRIO_DATA_STORAGE ;
 size_t BOOKE_IRQPRIO_DEBUG ;
 size_t BOOKE_IRQPRIO_DECREMENTER ;
 size_t BOOKE_IRQPRIO_DTLB_MISS ;
 size_t BOOKE_IRQPRIO_EXTERNAL ;
 size_t BOOKE_IRQPRIO_FIT ;
 size_t BOOKE_IRQPRIO_FP_UNAVAIL ;
 size_t BOOKE_IRQPRIO_INST_STORAGE ;
 size_t BOOKE_IRQPRIO_ITLB_MISS ;
 size_t BOOKE_IRQPRIO_MACHINE_CHECK ;
 size_t BOOKE_IRQPRIO_PROGRAM ;
 size_t BOOKE_IRQPRIO_SYSCALL ;
 size_t BOOKE_IRQPRIO_WATCHDOG ;
 int EMULATE_DONE ;
 int EMULATE_FAIL ;
 int kvmppc_emulate_dec (struct kvm_vcpu*) ;

int kvmppc_booke_emulate_mtspr(struct kvm_vcpu *vcpu, int sprn, int rs)
{
 int emulated = EMULATE_DONE;

 switch (sprn) {
 case 152:
  vcpu->arch.dear = vcpu->arch.gpr[rs]; break;
 case 151:
  vcpu->arch.esr = vcpu->arch.gpr[rs]; break;
 case 155:
  vcpu->arch.dbcr0 = vcpu->arch.gpr[rs]; break;
 case 154:
  vcpu->arch.dbcr1 = vcpu->arch.gpr[rs]; break;
 case 153:
  vcpu->arch.dbsr &= ~vcpu->arch.gpr[rs]; break;
 case 128:
  vcpu->arch.tsr &= ~vcpu->arch.gpr[rs]; break;
 case 129:
  vcpu->arch.tcr = vcpu->arch.gpr[rs];
  kvmppc_emulate_dec(vcpu);
  break;




 case 133:
  vcpu->arch.sprg4 = vcpu->arch.gpr[rs]; break;
 case 132:
  vcpu->arch.sprg5 = vcpu->arch.gpr[rs]; break;
 case 131:
  vcpu->arch.sprg6 = vcpu->arch.gpr[rs]; break;
 case 130:
  vcpu->arch.sprg7 = vcpu->arch.gpr[rs]; break;

 case 134:
  vcpu->arch.ivpr = vcpu->arch.gpr[rs];
  break;
 case 150:
  vcpu->arch.ivor[BOOKE_IRQPRIO_CRITICAL] = vcpu->arch.gpr[rs];
  break;
 case 149:
  vcpu->arch.ivor[BOOKE_IRQPRIO_MACHINE_CHECK] = vcpu->arch.gpr[rs];
  break;
 case 142:
  vcpu->arch.ivor[BOOKE_IRQPRIO_DATA_STORAGE] = vcpu->arch.gpr[rs];
  break;
 case 141:
  vcpu->arch.ivor[BOOKE_IRQPRIO_INST_STORAGE] = vcpu->arch.gpr[rs];
  break;
 case 140:
  vcpu->arch.ivor[BOOKE_IRQPRIO_EXTERNAL] = vcpu->arch.gpr[rs];
  break;
 case 139:
  vcpu->arch.ivor[BOOKE_IRQPRIO_ALIGNMENT] = vcpu->arch.gpr[rs];
  break;
 case 138:
  vcpu->arch.ivor[BOOKE_IRQPRIO_PROGRAM] = vcpu->arch.gpr[rs];
  break;
 case 137:
  vcpu->arch.ivor[BOOKE_IRQPRIO_FP_UNAVAIL] = vcpu->arch.gpr[rs];
  break;
 case 136:
  vcpu->arch.ivor[BOOKE_IRQPRIO_SYSCALL] = vcpu->arch.gpr[rs];
  break;
 case 135:
  vcpu->arch.ivor[BOOKE_IRQPRIO_AP_UNAVAIL] = vcpu->arch.gpr[rs];
  break;
 case 148:
  vcpu->arch.ivor[BOOKE_IRQPRIO_DECREMENTER] = vcpu->arch.gpr[rs];
  break;
 case 147:
  vcpu->arch.ivor[BOOKE_IRQPRIO_FIT] = vcpu->arch.gpr[rs];
  break;
 case 146:
  vcpu->arch.ivor[BOOKE_IRQPRIO_WATCHDOG] = vcpu->arch.gpr[rs];
  break;
 case 145:
  vcpu->arch.ivor[BOOKE_IRQPRIO_DTLB_MISS] = vcpu->arch.gpr[rs];
  break;
 case 144:
  vcpu->arch.ivor[BOOKE_IRQPRIO_ITLB_MISS] = vcpu->arch.gpr[rs];
  break;
 case 143:
  vcpu->arch.ivor[BOOKE_IRQPRIO_DEBUG] = vcpu->arch.gpr[rs];
  break;

 default:
  emulated = EMULATE_FAIL;
 }

 return emulated;
}
