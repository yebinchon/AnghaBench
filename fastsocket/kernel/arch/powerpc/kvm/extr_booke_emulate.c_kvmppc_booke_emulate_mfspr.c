
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ivor; int * gpr; int dbsr; int dbcr1; int dbcr0; int esr; int dear; int ivpr; } ;
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
int kvmppc_booke_emulate_mfspr(struct kvm_vcpu *vcpu, int sprn, int rt)
{
 int emulated = EMULATE_DONE;

 switch (sprn) {
 case 128:
  vcpu->arch.gpr[rt] = vcpu->arch.ivpr; break;
 case 146:
  vcpu->arch.gpr[rt] = vcpu->arch.dear; break;
 case 145:
  vcpu->arch.gpr[rt] = vcpu->arch.esr; break;
 case 149:
  vcpu->arch.gpr[rt] = vcpu->arch.dbcr0; break;
 case 148:
  vcpu->arch.gpr[rt] = vcpu->arch.dbcr1; break;
 case 147:
  vcpu->arch.gpr[rt] = vcpu->arch.dbsr; break;

 case 144:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_CRITICAL];
  break;
 case 143:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_MACHINE_CHECK];
  break;
 case 136:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_DATA_STORAGE];
  break;
 case 135:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_INST_STORAGE];
  break;
 case 134:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_EXTERNAL];
  break;
 case 133:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_ALIGNMENT];
  break;
 case 132:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_PROGRAM];
  break;
 case 131:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_FP_UNAVAIL];
  break;
 case 130:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_SYSCALL];
  break;
 case 129:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_AP_UNAVAIL];
  break;
 case 142:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_DECREMENTER];
  break;
 case 141:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_FIT];
  break;
 case 140:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_WATCHDOG];
  break;
 case 139:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_DTLB_MISS];
  break;
 case 138:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_ITLB_MISS];
  break;
 case 137:
  vcpu->arch.gpr[rt] = vcpu->arch.ivor[BOOKE_IRQPRIO_DEBUG];
  break;

 default:
  emulated = EMULATE_FAIL;
 }

 return emulated;
}
