
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ccr1; int * gpr; int ccr0; int mmucr; int pid; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EMULATED_MFSPR_EXITS ;
 int EMULATE_DONE ;




 int kvmppc_booke_emulate_mfspr (struct kvm_vcpu*,int,int) ;
 int kvmppc_set_exit_type (struct kvm_vcpu*,int ) ;

int kvmppc_core_emulate_mfspr(struct kvm_vcpu *vcpu, int sprn, int rt)
{
 int emulated = EMULATE_DONE;

 switch (sprn) {
 case 128:
  vcpu->arch.gpr[rt] = vcpu->arch.pid; break;
 case 129:
  vcpu->arch.gpr[rt] = vcpu->arch.mmucr; break;
 case 131:
  vcpu->arch.gpr[rt] = vcpu->arch.ccr0; break;
 case 130:
  vcpu->arch.gpr[rt] = vcpu->arch.ccr1; break;
 default:
  emulated = kvmppc_booke_emulate_mfspr(vcpu, sprn, rt);
 }

 kvmppc_set_exit_type(vcpu, EMULATED_MFSPR_EXITS);
 return emulated;
}
