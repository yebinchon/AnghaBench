
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * gpr; int ccr1; int ccr0; int mmucr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EMULATED_MTSPR_EXITS ;
 int EMULATE_DONE ;




 int kvmppc_booke_emulate_mtspr (struct kvm_vcpu*,int,int) ;
 int kvmppc_set_exit_type (struct kvm_vcpu*,int ) ;
 int kvmppc_set_pid (struct kvm_vcpu*,int ) ;

int kvmppc_core_emulate_mtspr(struct kvm_vcpu *vcpu, int sprn, int rs)
{
 int emulated = EMULATE_DONE;

 switch (sprn) {
 case 128:
  kvmppc_set_pid(vcpu, vcpu->arch.gpr[rs]); break;
 case 129:
  vcpu->arch.mmucr = vcpu->arch.gpr[rs]; break;
 case 131:
  vcpu->arch.ccr0 = vcpu->arch.gpr[rs]; break;
 case 130:
  vcpu->arch.ccr1 = vcpu->arch.gpr[rs]; break;
 default:
  emulated = kvmppc_booke_emulate_mtspr(vcpu, sprn, rs);
 }

 kvmppc_set_exit_type(vcpu, EMULATED_MTSPR_EXITS);
 return emulated;
}
