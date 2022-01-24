#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union context {int dummy; } context ;
struct vpd {int /*<<< orphan*/  vpr; int /*<<< orphan*/  vpsr; int /*<<< orphan*/  vbnat; int /*<<< orphan*/  vnat; int /*<<< orphan*/  vhpi; int /*<<< orphan*/ * vcr; int /*<<< orphan*/ * vbgr; int /*<<< orphan*/ * vgr; } ;
struct thash_data {int dummy; } ;
struct TYPE_4__ {scalar_t__ itc_offset; int /*<<< orphan*/ * insvc; int /*<<< orphan*/ * dbr; int /*<<< orphan*/ * ibr; int /*<<< orphan*/ * vrr; int /*<<< orphan*/ * dtrs; int /*<<< orphan*/ * itrs; int /*<<< orphan*/  guest; int /*<<< orphan*/  vpd; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  kvm; } ;
struct TYPE_3__ {int /*<<< orphan*/  vpr; int /*<<< orphan*/  vpsr; int /*<<< orphan*/  vbnat; int /*<<< orphan*/  vnat; int /*<<< orphan*/  vhpi; int /*<<< orphan*/ * vcr; int /*<<< orphan*/ * vbgr; int /*<<< orphan*/ * vgr; } ;
struct kvm_regs {scalar_t__ saved_itc; int /*<<< orphan*/ * insvc; int /*<<< orphan*/ * dbr; int /*<<< orphan*/ * ibr; int /*<<< orphan*/ * vrr; int /*<<< orphan*/ * dtrs; int /*<<< orphan*/ * itrs; int /*<<< orphan*/  saved_guest; TYPE_1__ vpd; } ;

/* Variables and functions */
 int NDTRS ; 
 int NITRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtr_regions ; 
 int /*<<< orphan*/  fp_psr ; 
 int /*<<< orphan*/  irq_check ; 
 int /*<<< orphan*/  itc_check ; 
 int /*<<< orphan*/  itr_regions ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  last_itc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  metaphysical_rr0 ; 
 int /*<<< orphan*/  metaphysical_rr4 ; 
 int /*<<< orphan*/  metaphysical_saved_rr0 ; 
 int /*<<< orphan*/  metaphysical_saved_rr4 ; 
 int /*<<< orphan*/  mp_state ; 
 int /*<<< orphan*/  saved_gp ; 
 int /*<<< orphan*/  tc_regions ; 
 int /*<<< orphan*/  timer_check ; 
 int /*<<< orphan*/  timer_pending ; 
 struct vpd* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  vmm_rr ; 
 int /*<<< orphan*/  xtp ; 

int FUNC6(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
	struct vpd *vpd = FUNC3(vcpu->kvm, vcpu->arch.vpd);
	int i;

	FUNC4(vcpu);

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

	FUNC2(&regs->saved_guest, &vcpu->arch.guest, sizeof(union context));

	FUNC0(mp_state);
	FUNC0(vmm_rr);
	FUNC2(regs->itrs, vcpu->arch.itrs, sizeof(struct thash_data) * NITRS);
	FUNC2(regs->dtrs, vcpu->arch.dtrs, sizeof(struct thash_data) * NDTRS);
	FUNC0(itr_regions);
	FUNC0(dtr_regions);
	FUNC0(tc_regions);
	FUNC0(irq_check);
	FUNC0(itc_check);
	FUNC0(timer_check);
	FUNC0(timer_pending);
	FUNC0(last_itc);
	for (i = 0; i < 8; i++) {
		regs->vrr[i] = vcpu->arch.vrr[i];
		regs->ibr[i] = vcpu->arch.ibr[i];
		regs->dbr[i] = vcpu->arch.dbr[i];
	}
	for (i = 0; i < 4; i++)
		regs->insvc[i] = vcpu->arch.insvc[i];
	regs->saved_itc = vcpu->arch.itc_offset + FUNC1(vcpu);
	FUNC0(xtp);
	FUNC0(metaphysical_rr0);
	FUNC0(metaphysical_rr4);
	FUNC0(metaphysical_saved_rr0);
	FUNC0(metaphysical_saved_rr4);
	FUNC0(fp_psr);
	FUNC0(saved_gp);

	FUNC5(vcpu);
	return 0;
}