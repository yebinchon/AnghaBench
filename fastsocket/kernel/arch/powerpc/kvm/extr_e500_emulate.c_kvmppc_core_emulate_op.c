
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;


 int EMULATE_DONE ;
 int EMULATE_FAIL ;




 int get_op (unsigned int) ;
 int get_ra (unsigned int) ;
 int get_rb (unsigned int) ;
 int get_xop (unsigned int) ;
 int kvmppc_booke_emulate_op (struct kvm_run*,struct kvm_vcpu*,unsigned int,int*) ;
 int kvmppc_e500_emul_tlbivax (struct kvm_vcpu*,int,int) ;
 int kvmppc_e500_emul_tlbre (struct kvm_vcpu*) ;
 int kvmppc_e500_emul_tlbsx (struct kvm_vcpu*,int) ;
 int kvmppc_e500_emul_tlbwe (struct kvm_vcpu*) ;

int kvmppc_core_emulate_op(struct kvm_run *run, struct kvm_vcpu *vcpu,
                           unsigned int inst, int *advance)
{
 int emulated = EMULATE_DONE;
 int ra;
 int rb;

 switch (get_op(inst)) {
 case 31:
  switch (get_xop(inst)) {

  case 130:
   emulated = kvmppc_e500_emul_tlbre(vcpu);
   break;

  case 128:
   emulated = kvmppc_e500_emul_tlbwe(vcpu);
   break;

  case 129:
   rb = get_rb(inst);
   emulated = kvmppc_e500_emul_tlbsx(vcpu,rb);
   break;

  case 131:
   ra = get_ra(inst);
   rb = get_rb(inst);
   emulated = kvmppc_e500_emul_tlbivax(vcpu, ra, rb);
   break;

  default:
   emulated = EMULATE_FAIL;
  }

  break;

 default:
  emulated = EMULATE_FAIL;
 }

 if (emulated == EMULATE_FAIL)
  emulated = kvmppc_booke_emulate_op(run, vcpu, inst, advance);

 return emulated;
}
