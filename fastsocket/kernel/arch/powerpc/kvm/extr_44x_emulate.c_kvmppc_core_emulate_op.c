
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int io_gpr; int dcr_needed; int * gpr; int cpr0_cfgaddr; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int dcrn; int is_write; int data; } ;
struct kvm_run {TYPE_1__ dcr; } ;




 int DCR_EXITS ;
 int EMULATE_DONE ;
 int EMULATE_DO_DCR ;
 int EMULATE_FAIL ;





 int get_dcrn (unsigned int) ;
 int get_op (unsigned int) ;
 int get_ra (unsigned int) ;
 int get_rb (unsigned int) ;
 int get_rc (unsigned int) ;
 int get_rs (unsigned int) ;
 int get_rt (unsigned int) ;
 int get_ws (unsigned int) ;
 int get_xop (unsigned int) ;
 int kvmppc_44x_emul_tlbsx (struct kvm_vcpu*,int,int,int,int) ;
 int kvmppc_44x_emul_tlbwe (struct kvm_vcpu*,int,int,int) ;
 int kvmppc_account_exit (struct kvm_vcpu*,int ) ;
 int kvmppc_booke_emulate_op (struct kvm_run*,struct kvm_vcpu*,unsigned int,int*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int mfdcr (int const) ;
 int mtdcr (int const,int ) ;

int kvmppc_core_emulate_op(struct kvm_run *run, struct kvm_vcpu *vcpu,
                           unsigned int inst, int *advance)
{
 int emulated = EMULATE_DONE;
 int dcrn;
 int ra;
 int rb;
 int rc;
 int rs;
 int rt;
 int ws;

 switch (get_op(inst)) {
 case 31:
  switch (get_xop(inst)) {

  case 131:
   dcrn = get_dcrn(inst);
   rt = get_rt(inst);
   switch (dcrn) {
   case 134:
    vcpu->arch.gpr[rt] = vcpu->arch.cpr0_cfgaddr;
    break;
   case 133:
    local_irq_disable();
    mtdcr(134,
       vcpu->arch.cpr0_cfgaddr);
    vcpu->arch.gpr[rt] = mfdcr(133);
    local_irq_enable();
    break;
   default:
    run->dcr.dcrn = dcrn;
    run->dcr.data = 0;
    run->dcr.is_write = 0;
    vcpu->arch.io_gpr = rt;
    vcpu->arch.dcr_needed = 1;
    kvmppc_account_exit(vcpu, DCR_EXITS);
    emulated = EMULATE_DO_DCR;
   }

   break;

  case 130:
   dcrn = get_dcrn(inst);
   rs = get_rs(inst);


   switch (dcrn) {
   case 134:
    vcpu->arch.cpr0_cfgaddr = vcpu->arch.gpr[rs];
    break;
   default:
    run->dcr.dcrn = dcrn;
    run->dcr.data = vcpu->arch.gpr[rs];
    run->dcr.is_write = 1;
    vcpu->arch.dcr_needed = 1;
    kvmppc_account_exit(vcpu, DCR_EXITS);
    emulated = EMULATE_DO_DCR;
   }

   break;

  case 128:
   ra = get_ra(inst);
   rs = get_rs(inst);
   ws = get_ws(inst);
   emulated = kvmppc_44x_emul_tlbwe(vcpu, ra, rs, ws);
   break;

  case 129:
   rt = get_rt(inst);
   ra = get_ra(inst);
   rb = get_rb(inst);
   rc = get_rc(inst);
   emulated = kvmppc_44x_emul_tlbsx(vcpu, rt, ra, rb, rc);
   break;

  case 132:
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
