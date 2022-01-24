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
union ia64_pta {void* val; } ;
union ia64_isr {int ni; int /*<<< orphan*/  val; scalar_t__ rs; scalar_t__ sp; } ;
typedef  int u64 ;
struct thash_data {unsigned long ps; int ppn; int pl; int ma; int /*<<< orphan*/  itir; int /*<<< orphan*/  page_flags; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int cr_ipsr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_REF ; 
 int D_TLB ; 
 int IA64_PSR_CPL0_BIT ; 
 unsigned long IA64_PSR_IC ; 
 int /*<<< orphan*/  INST_REF ; 
 int I_TLB ; 
 int PAGE_SHIFT ; 
 int RR_PS_MASK ; 
 int RR_RID_MASK ; 
 int /*<<< orphan*/  RSE_REF ; 
 unsigned long FUNC0 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int _PAGE_MA_MASK ; 
 int _PAGE_MA_ST ; 
 int _PAGE_P ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  cr_isr ; 
 struct kvm_vcpu* current_vcpu ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_pt_regs*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC12 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC19 (struct kvm_vcpu*) ; 
 int FUNC20 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 struct thash_data* FUNC24 (struct kvm_vcpu*,int,int) ; 

void FUNC25(u64 vadr , u64 vec, struct kvm_pt_regs *regs)
{
	unsigned long vpsr;
	int type;

	u64 vhpt_adr, gppa, pteval, rr, itir;
	union ia64_isr misr;
	union ia64_pta vpta;
	struct thash_data *data;
	struct kvm_vcpu *v = current_vcpu;

	vpsr = FUNC0(v, vpsr);
	misr.val = FUNC1(v, cr_isr);

	type = vec;

	if (FUNC12(v) && (!(vadr << 1 >> 62))) {
		if (vec == 2) {
			if (FUNC2((vadr << 1) >> (PAGE_SHIFT + 1))) {
				FUNC8(v, ((vadr << 1) >> 1), 4);
				return;
			}
		}
		FUNC16(v, vadr, type);
		return;
	}
	data = FUNC24(v, vadr, type);
	if (data != 0) {
		if (type == D_TLB) {
			gppa = (vadr & ((1UL << data->ps) - 1))
				+ (data->ppn >> (data->ps - 12) << data->ps);
			if (FUNC2(gppa >> PAGE_SHIFT)) {
				if (data->pl >= ((regs->cr_ipsr >>
						IA64_PSR_CPL0_BIT) & 3))
					FUNC8(v, gppa, data->ma);
				else {
					FUNC21(v, misr.val);
					FUNC5(v, vadr);
				}
				return ;
			}
		}
		FUNC18(v, data->page_flags, data->itir, vadr, type);

	} else if (type == D_TLB) {
		if (misr.sp) {
			FUNC10(regs);
			return;
		}

		rr = FUNC20(v, vadr);
		itir = rr & (RR_RID_MASK | RR_PS_MASK);

		if (!FUNC23(v, vadr, misr.rs ? RSE_REF : DATA_REF)) {
			if (vpsr & IA64_PSR_IC) {
				FUNC21(v, misr.val);
				FUNC3(v, vadr);
			} else {
				FUNC15(v);
			}
			return ;
		}

		vpta.val = FUNC19(v);
		/* avoid recursively walking (short format) VHPT */

		vhpt_adr = FUNC22(v, vadr);
		if (!FUNC9(vhpt_adr, &pteval)) {
			/* VHPT successfully read.  */
			if (!(pteval & _PAGE_P)) {
				if (vpsr & IA64_PSR_IC) {
					FUNC21(v, misr.val);
					FUNC6(v, vadr);
				} else {
					FUNC15(v);
				}
			} else if ((pteval & _PAGE_MA_MASK) != _PAGE_MA_ST) {
				FUNC17(v, pteval, itir,
								vadr, D_TLB);
			} else if (vpsr & IA64_PSR_IC) {
				FUNC21(v, misr.val);
				FUNC6(v, vadr);
			} else {
				FUNC15(v);
			}
		} else {
			/* Can't read VHPT.  */
			if (vpsr & IA64_PSR_IC) {
				FUNC21(v, misr.val);
				FUNC7(v, vadr);
			} else {
				FUNC15(v);
			}
		}
	} else if (type == I_TLB) {
		if (!(vpsr & IA64_PSR_IC))
			misr.ni = 1;
		if (!FUNC23(v, vadr, INST_REF)) {
			FUNC21(v, misr.val);
			FUNC4(v, vadr);
			return;
		}

		vpta.val = FUNC19(v);

		vhpt_adr = FUNC22(v, vadr);
		if (!FUNC9(vhpt_adr, &pteval)) {
			/* VHPT successfully read.  */
			if (pteval & _PAGE_P) {
				if ((pteval & _PAGE_MA_MASK) == _PAGE_MA_ST) {
					FUNC21(v, misr.val);
					FUNC13(v, vadr);
					return ;
				}
				rr = FUNC20(v, vadr);
				itir = rr & (RR_RID_MASK | RR_PS_MASK);
				FUNC17(v, pteval, itir,
							vadr, I_TLB);
			} else {
				FUNC21(v, misr.val);
				FUNC11(v, vadr);
			}
		} else {
			FUNC21(v, misr.val);
			FUNC14(v, vadr);
		}
	}
}