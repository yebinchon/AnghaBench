
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union context {int dummy; } context ;
struct vpd {int vpr; int vpsr; int vbnat; int vnat; int vhpi; int * vcr; int * vbgr; int * vgr; } ;
struct thash_data {int dummy; } ;
struct TYPE_4__ {int irq_new_pending; scalar_t__ itc_offset; int * insvc; int * dbr; int * ibr; int * vrr; int * dtrs; int * itrs; int guest; int vpd; } ;
struct kvm_vcpu {int requests; TYPE_2__ arch; int kvm; } ;
struct TYPE_3__ {int vpr; int vpsr; int vbnat; int vnat; int vhpi; int * vcr; int * vbgr; int * vgr; } ;
struct kvm_regs {scalar_t__ saved_itc; int * insvc; int * dbr; int * ibr; int * vrr; int * dtrs; int * itrs; int saved_guest; TYPE_1__ vpd; } ;


 int KVM_REQ_RESUME ;
 int NDTRS ;
 int NITRS ;
 int RESTORE_REGS (int ) ;
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
 int set_bit (int ,int *) ;
 int tc_regions ;
 int timer_check ;
 int timer_pending ;
 struct vpd* to_host (int ,int ) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;
 int vmm_rr ;
 int xtp ;

int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 struct vpd *vpd = to_host(vcpu->kvm, vcpu->arch.vpd);
 int i;

 vcpu_load(vcpu);

 for (i = 0; i < 16; i++) {
  vpd->vgr[i] = regs->vpd.vgr[i];
  vpd->vbgr[i] = regs->vpd.vbgr[i];
 }
 for (i = 0; i < 128; i++)
  vpd->vcr[i] = regs->vpd.vcr[i];
 vpd->vhpi = regs->vpd.vhpi;
 vpd->vnat = regs->vpd.vnat;
 vpd->vbnat = regs->vpd.vbnat;
 vpd->vpsr = regs->vpd.vpsr;

 vpd->vpr = regs->vpd.vpr;

 memcpy(&vcpu->arch.guest, &regs->saved_guest, sizeof(union context));

 RESTORE_REGS(mp_state);
 RESTORE_REGS(vmm_rr);
 memcpy(vcpu->arch.itrs, regs->itrs, sizeof(struct thash_data) * NITRS);
 memcpy(vcpu->arch.dtrs, regs->dtrs, sizeof(struct thash_data) * NDTRS);
 RESTORE_REGS(itr_regions);
 RESTORE_REGS(dtr_regions);
 RESTORE_REGS(tc_regions);
 RESTORE_REGS(irq_check);
 RESTORE_REGS(itc_check);
 RESTORE_REGS(timer_check);
 RESTORE_REGS(timer_pending);
 RESTORE_REGS(last_itc);
 for (i = 0; i < 8; i++) {
  vcpu->arch.vrr[i] = regs->vrr[i];
  vcpu->arch.ibr[i] = regs->ibr[i];
  vcpu->arch.dbr[i] = regs->dbr[i];
 }
 for (i = 0; i < 4; i++)
  vcpu->arch.insvc[i] = regs->insvc[i];
 RESTORE_REGS(xtp);
 RESTORE_REGS(metaphysical_rr0);
 RESTORE_REGS(metaphysical_rr4);
 RESTORE_REGS(metaphysical_saved_rr0);
 RESTORE_REGS(metaphysical_saved_rr4);
 RESTORE_REGS(fp_psr);
 RESTORE_REGS(saved_gp);

 vcpu->arch.irq_new_pending = 1;
 vcpu->arch.itc_offset = regs->saved_itc - kvm_get_itc(vcpu);
 set_bit(KVM_REQ_RESUME, &vcpu->requests);

 vcpu_put(vcpu);

 return 0;
}
