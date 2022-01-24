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
typedef  int u64 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int PAGE_FLAGS_RV_MASK ; 
 int VTLB_PTE_IO ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int) ; 

void FUNC9(struct kvm_vcpu *v, u64 pte, u64 itir, u64 va, int type)
{
	u64 phy_pte, psr;
	union ia64_rr mrr;

	mrr.val = FUNC1(va);
	phy_pte = FUNC7(&pte, itir, va);

	if (FUNC4(itir) >= mrr.ps) {
		FUNC8(phy_pte, itir, va, pte);
	} else {
		phy_pte  &= ~PAGE_FLAGS_RV_MASK;
		psr = FUNC0();
		FUNC2(type, va, phy_pte, FUNC4(itir));
		FUNC6();
		FUNC3(psr);
	}

	if (!(pte&VTLB_PTE_IO))
		FUNC5(v, pte, FUNC4(itir));
}