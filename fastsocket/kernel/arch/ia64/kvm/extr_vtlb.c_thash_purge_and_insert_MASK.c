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
union ia64_rr {scalar_t__ ps; int /*<<< orphan*/  val; } ;
typedef  scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ GPFN_IO_MASK ; 
 scalar_t__ GPFN_PHYS_MMIO ; 
 scalar_t__ PAGE_FLAGS_RV_MASK ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ VTLB_PTE_IO ; 
 scalar_t__ _PAGE_MA_MASK ; 
 scalar_t__ _PAGE_MA_NAT ; 
 scalar_t__ _PAGE_PPN_MASK ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  tc_regions ; 
 scalar_t__ FUNC9 (scalar_t__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*,scalar_t__,scalar_t__) ; 

void  FUNC16(struct kvm_vcpu *v, u64 pte, u64 itir,
						u64 ifa, int type)
{
	u64 ps;
	u64 phy_pte, io_mask, index;
	union ia64_rr vrr, mrr;

	ps = FUNC5(itir);
	vrr.val = FUNC10(v, ifa);
	mrr.val = FUNC2(ifa);

	index = (pte & _PAGE_PPN_MASK) >> PAGE_SHIFT;
	io_mask = FUNC6(index) & GPFN_IO_MASK;
	phy_pte = FUNC9(&pte, itir, ifa);

	/* Ensure WB attribute if pte is related to a normal mem page,
	 * which is required by vga acceleration since qemu maps shared
	 * vram buffer with WB.
	 */
	if (!(pte & VTLB_PTE_IO) && ((pte & _PAGE_MA_MASK) != _PAGE_MA_NAT) &&
			io_mask != GPFN_PHYS_MMIO) {
		pte &= ~_PAGE_MA_MASK;
		phy_pte &= ~_PAGE_MA_MASK;
	}

	FUNC15(v, ifa, ps);
	FUNC13(v, ifa, ps);

	if ((ps != mrr.ps) || (pte & VTLB_PTE_IO)) {
		FUNC14(v, pte, itir, ifa);
		FUNC11(FUNC0(v, tc_regions), ifa);
	}
	if (pte & VTLB_PTE_IO)
		return;

	if (ps >= mrr.ps)
		FUNC12(phy_pte, itir, ifa, pte);
	else {
		u64 psr;
		phy_pte  &= ~PAGE_FLAGS_RV_MASK;
		psr = FUNC1();
		FUNC3(type, ifa, phy_pte, ps);
		FUNC8();
		FUNC4(psr);
	}
	if (!(pte&VTLB_PTE_IO))
		FUNC7(v, pte, ps);

}