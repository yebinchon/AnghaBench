#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned long u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {unsigned long cr_ipsr; int /*<<< orphan*/  cr_iip; } ;

/* Variables and functions */
 unsigned long IA64_DCR_BE ; 
 unsigned long IA64_DCR_PP ; 
 unsigned long IA64_IFS_V ; 
 unsigned long IA64_PSR_DA ; 
 unsigned long IA64_PSR_DD ; 
 unsigned long IA64_PSR_ED ; 
 unsigned long IA64_PSR_IC ; 
 unsigned long IA64_PSR_ID ; 
 unsigned long IA64_PSR_PP ; 
 unsigned long IA64_PSR_SS ; 
 unsigned long INITIAL_PSR_VALUE_AT_INTERRUPTION ; 
 unsigned long FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cr_iipa ; 
 int /*<<< orphan*/  dcr ; 
 int /*<<< orphan*/  ifs ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 unsigned long FUNC3 (struct kvm_vcpu*) ; 
 struct kvm_pt_regs* FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct kvm_vcpu *vcpu)
{
	u64 ipsr;
	u64 vdcr;
	u64 vifs;
	unsigned long vpsr;
	struct kvm_pt_regs *regs = FUNC4(vcpu);

	vpsr = FUNC3(vcpu);
	FUNC2(vcpu);
	if (vpsr & IA64_PSR_IC) {

		/* Sync mpsr id/da/dd/ss/ed bits to vipsr
		 * since after guest do rfi, we still want these bits on in
		 * mpsr
		 */

		ipsr = regs->cr_ipsr;
		vpsr = vpsr | (ipsr & (IA64_PSR_ID | IA64_PSR_DA
					| IA64_PSR_DD | IA64_PSR_SS
					| IA64_PSR_ED));
		FUNC8(vcpu, vpsr);

		/* Currently, for trap, we do not advance IIP to next
		 * instruction. That's because we assume caller already
		 * set up IIP correctly
		 */

		FUNC6(vcpu , regs->cr_iip);

		/* set vifs.v to zero */
		vifs = FUNC0(vcpu, ifs);
		vifs &= ~IA64_IFS_V;
		FUNC5(vcpu, vifs);

		FUNC7(vcpu, FUNC1(vcpu, cr_iipa));
	}

	vdcr = FUNC0(vcpu, dcr);

	/* Set guest psr
	 * up/mfl/mfh/pk/dt/rt/mc/it keeps unchanged
	 * be: set to the value of dcr.be
	 * pp: set to the value of dcr.pp
	 */
	vpsr &= INITIAL_PSR_VALUE_AT_INTERRUPTION;
	vpsr |= (vdcr & IA64_DCR_BE);

	/* VDCR pp bit position is different from VPSR pp bit */
	if (vdcr & IA64_DCR_PP) {
		vpsr |= IA64_PSR_PP;
	} else {
		vpsr &= ~IA64_PSR_PP;
	}

	FUNC9(vcpu, vpsr);

}