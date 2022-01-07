
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* gpr; unsigned int msr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_run {int dummy; } ;


 int EMULATED_MFMSR_EXITS ;
 int EMULATED_MTMSR_EXITS ;
 int EMULATED_RFI_EXITS ;
 int EMULATED_WRTEE_EXITS ;
 int EMULATE_DONE ;
 int EMULATE_FAIL ;
 unsigned int MSR_EE ;





 int get_op (unsigned int) ;
 int get_rs (unsigned int) ;
 int get_rt (unsigned int) ;
 int get_xop (unsigned int) ;
 int kvmppc_emul_rfi (struct kvm_vcpu*) ;
 int kvmppc_set_exit_type (struct kvm_vcpu*,int ) ;
 int kvmppc_set_msr (struct kvm_vcpu*,unsigned int) ;

int kvmppc_booke_emulate_op(struct kvm_run *run, struct kvm_vcpu *vcpu,
                            unsigned int inst, int *advance)
{
 int emulated = EMULATE_DONE;
 int rs;
 int rt;

 switch (get_op(inst)) {
 case 19:
  switch (get_xop(inst)) {
  case 132:
   kvmppc_emul_rfi(vcpu);
   kvmppc_set_exit_type(vcpu, EMULATED_RFI_EXITS);
   *advance = 0;
   break;

  default:
   emulated = EMULATE_FAIL;
   break;
  }
  break;

 case 31:
  switch (get_xop(inst)) {

  case 131:
   rt = get_rt(inst);
   vcpu->arch.gpr[rt] = vcpu->arch.msr;
   kvmppc_set_exit_type(vcpu, EMULATED_MFMSR_EXITS);
   break;

  case 130:
   rs = get_rs(inst);
   kvmppc_set_exit_type(vcpu, EMULATED_MTMSR_EXITS);
   kvmppc_set_msr(vcpu, vcpu->arch.gpr[rs]);
   break;

  case 129:
   rs = get_rs(inst);
   vcpu->arch.msr = (vcpu->arch.msr & ~MSR_EE)
        | (vcpu->arch.gpr[rs] & MSR_EE);
   kvmppc_set_exit_type(vcpu, EMULATED_WRTEE_EXITS);
   break;

  case 128:
   vcpu->arch.msr = (vcpu->arch.msr & ~MSR_EE)
        | (inst & MSR_EE);
   kvmppc_set_exit_type(vcpu, EMULATED_WRTEE_EXITS);
   break;

  default:
   emulated = EMULATE_FAIL;
  }

  break;

 default:
  emulated = EMULATE_FAIL;
 }

 return emulated;
}
