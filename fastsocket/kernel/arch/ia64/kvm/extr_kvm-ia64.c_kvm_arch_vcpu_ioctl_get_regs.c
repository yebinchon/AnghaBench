
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union context {int dummy; } context ;
struct vpd {int vpr; int vpsr; int vbnat; int vnat; int vhpi; int * vcr; int * vbgr; int * vgr; } ;
struct thash_data {int dummy; } ;
struct TYPE_4__ {scalar_t__ itc_offset; int * insvc; int * dbr; int * ibr; int * vrr; int * dtrs; int * itrs; int guest; int vpd; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;
struct TYPE_3__ {int vpr; int vpsr; int vbnat; int vnat; int vhpi; int * vcr; int * vbgr; int * vgr; } ;
struct kvm_regs {scalar_t__ saved_itc; int * insvc; int * dbr; int * ibr; int * vrr; int * dtrs; int * itrs; int saved_guest; TYPE_1__ vpd; } ;


 int NDTRS ;
 int NITRS ;
 int SAVE_REGS (int ) ;
 int dtr_regions ;
 int fp_psr ;
 int irq_check ;
 int itc_check ;
 int itr_regions ;
 scalar_t__ kvm_get_itc (struct kvm_vcpu*) ;
 int last_itc ;
 int memcpy (int *,int *,int) ;
 int metaphysical_rr0 ;
 int metaphysical_rr4 ;
 int metaphysical_saved_rr0 ;
 int metaphysical_saved_rr4 ;
 int mp_state ;
 int saved_gp ;
 int tc_regions ;
 int timer_check ;
 int timer_pending ;
 struct vpd* to_host (int ,int ) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;
 int vmm_rr ;
 int xtp ;

int kvm_arch_vcpu_ioctl_get_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 struct vpd *vpd = to_host(vcpu->kvm, vcpu->arch.vpd);
 int i;

 vcpu_load(vcpu);

 for (i = 0; i < 16; i++) {
  regs->vpd.vgr[i] = vpd->vgr[i];
  regs->vpd.vbgr[i] = vpd->vbgr[i];
 }
 for (i = 0; i < 128; i++)
  regs->vpd.vcr[i] = vpd->vcr[i];
 regs->vpd.vhpi = vpd->vhpi;
 regs->vpd.vnat = vpd->vnat;
 regs->vpd.vbnat = vpd->vbnat;
 regs->vpd.vpsr = vpd->vpsr;
 regs->vpd.vpr = vpd->vpr;

 memcpy(&regs->saved_guest, &vcpu->arch.guest, sizeof(union context));

 SAVE_REGS(mp_state);
 SAVE_REGS(vmm_rr);
 memcpy(regs->itrs, vcpu->arch.itrs, sizeof(struct thash_data) * NITRS);
 memcpy(regs->dtrs, vcpu->arch.dtrs, sizeof(struct thash_data) * NDTRS);
 SAVE_REGS(itr_regions);
 SAVE_REGS(dtr_regions);
 SAVE_REGS(tc_regions);
 SAVE_REGS(irq_check);
 SAVE_REGS(itc_check);
 SAVE_REGS(timer_check);
 SAVE_REGS(timer_pending);
 SAVE_REGS(last_itc);
 for (i = 0; i < 8; i++) {
  regs->vrr[i] = vcpu->arch.vrr[i];
  regs->ibr[i] = vcpu->arch.ibr[i];
  regs->dbr[i] = vcpu->arch.dbr[i];
 }
 for (i = 0; i < 4; i++)
  regs->insvc[i] = vcpu->arch.insvc[i];
 regs->saved_itc = vcpu->arch.itc_offset + kvm_get_itc(vcpu);
 SAVE_REGS(xtp);
 SAVE_REGS(metaphysical_rr0);
 SAVE_REGS(metaphysical_rr4);
 SAVE_REGS(metaphysical_saved_rr0);
 SAVE_REGS(metaphysical_saved_rr4);
 SAVE_REGS(fp_psr);
 SAVE_REGS(saved_gp);

 vcpu_put(vcpu);
 return 0;
}
