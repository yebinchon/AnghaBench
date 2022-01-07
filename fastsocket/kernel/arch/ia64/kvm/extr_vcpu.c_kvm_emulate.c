
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;
struct TYPE_37__ {unsigned long inst; } ;
typedef TYPE_1__ INST64 ;
 unsigned long IA64_FAULT ;
 unsigned long IA64_NO_FAULT ;
 unsigned long VMX (struct kvm_vcpu*,unsigned long) ;
 int kvm_itc_d (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_itc_i (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_itr_d (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_itr_i (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_from_ar_reg (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_from_cpuid (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_from_cr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_from_dbr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_from_ibr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_from_pkr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_from_pmc (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_from_psr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_from_rr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_to_ar_imm (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_to_ar_reg (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_to_cr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_to_dbr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_to_ibr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_to_pkr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_to_pmc (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_to_pmd (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_to_psr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_mov_to_rr (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_ptc_e (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_ptc_g (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_ptc_ga (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_ptc_l (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_ptr_d (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_ptr_i (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_rsm (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_ssm (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_tak (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_thash (struct kvm_vcpu*,TYPE_1__) ;
 unsigned long kvm_tpa (struct kvm_vcpu*,TYPE_1__) ;
 int kvm_ttag (struct kvm_vcpu*,TYPE_1__) ;
 int prepare_if_physical_mode (struct kvm_vcpu*) ;
 int recover_if_physical_mode (struct kvm_vcpu*) ;
 int vcpu_bsw0 (struct kvm_vcpu*) ;
 int vcpu_bsw1 (struct kvm_vcpu*) ;
 int vcpu_cover (struct kvm_vcpu*) ;
 int vcpu_increment_iip (struct kvm_vcpu*) ;
 int vcpu_rfi (struct kvm_vcpu*) ;

void kvm_emulate(struct kvm_vcpu *vcpu, struct kvm_pt_regs *regs)
{
 unsigned long status, cause, opcode ;
 INST64 inst;

 status = IA64_NO_FAULT;
 cause = VMX(vcpu, cause);
 opcode = VMX(vcpu, opcode);
 inst.inst = opcode;




 prepare_if_physical_mode(vcpu);

 switch (cause) {
 case 134:
  kvm_rsm(vcpu, inst);
  break;
 case 133:
  kvm_ssm(vcpu, inst);
  break;
 case 143:
  kvm_mov_to_psr(vcpu, inst);
  break;
 case 153:
  kvm_mov_from_psr(vcpu, inst);
  break;
 case 158:
  kvm_mov_from_cr(vcpu, inst);
  break;
 case 149:
  kvm_mov_to_cr(vcpu, inst);
  break;
 case 167:
  vcpu_bsw0(vcpu);
  break;
 case 166:
  vcpu_bsw1(vcpu);
  break;
 case 165:
  vcpu_cover(vcpu);
  break;
 case 135:
  vcpu_rfi(vcpu);
  break;
 case 162:
  kvm_itr_d(vcpu, inst);
  break;
 case 161:
  kvm_itr_i(vcpu, inst);
  break;
 case 137:
  kvm_ptr_d(vcpu, inst);
  break;
 case 136:
  kvm_ptr_i(vcpu, inst);
  break;
 case 164:
  kvm_itc_d(vcpu, inst);
  break;
 case 163:
  kvm_itc_i(vcpu, inst);
  break;
 case 138:
  kvm_ptc_l(vcpu, inst);
  break;
 case 140:
  kvm_ptc_g(vcpu, inst);
  break;
 case 139:
  kvm_ptc_ga(vcpu, inst);
  break;
 case 141:
  kvm_ptc_e(vcpu, inst);
  break;
 case 142:
  kvm_mov_to_rr(vcpu, inst);
  break;
 case 152:
  kvm_mov_from_rr(vcpu, inst);
  break;
 case 131:
  kvm_thash(vcpu, inst);
  break;
 case 129:
  kvm_ttag(vcpu, inst);
  break;
 case 130:
  status = kvm_tpa(vcpu, inst);
  break;
 case 132:
  kvm_tak(vcpu, inst);
  break;
 case 150:
  kvm_mov_to_ar_imm(vcpu, inst);
  break;
 case 151:
  kvm_mov_to_ar_reg(vcpu, inst);
  break;
 case 160:
  kvm_mov_from_ar_reg(vcpu, inst);
  break;
 case 148:
  kvm_mov_to_dbr(vcpu, inst);
  break;
 case 147:
  kvm_mov_to_ibr(vcpu, inst);
  break;
 case 145:
  kvm_mov_to_pmc(vcpu, inst);
  break;
 case 144:
  kvm_mov_to_pmd(vcpu, inst);
  break;
 case 146:
  kvm_mov_to_pkr(vcpu, inst);
  break;
 case 157:
  kvm_mov_from_dbr(vcpu, inst);
  break;
 case 156:
  kvm_mov_from_ibr(vcpu, inst);
  break;
 case 154:
  kvm_mov_from_pmc(vcpu, inst);
  break;
 case 155:
  kvm_mov_from_pkr(vcpu, inst);
  break;
 case 159:
  kvm_mov_from_cpuid(vcpu, inst);
  break;
 case 128:
  status = IA64_FAULT;
  break;
 default:
  break;
 };

 if (status == IA64_NO_FAULT && cause != 135)
  vcpu_increment_iip(vcpu);

 recover_if_physical_mode(vcpu);
}
