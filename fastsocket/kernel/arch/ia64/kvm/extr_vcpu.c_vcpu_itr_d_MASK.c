#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct thash_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dtrs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ PAGE_FLAGS_RV_MASK ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ RR_RID_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ VTLB_PTE_IO ; 
 scalar_t__ _PAGE_PPN_MASK ; 
 scalar_t__ _PAGE_SIZE_16M ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  dtr_regions ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct thash_data*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

void FUNC8(struct kvm_vcpu *vcpu, u64 slot, u64 pte, u64 itir, u64 ifa)
{
	u64 gpfn;
	u64 ps, va, rid;
	struct thash_data *p_dtr;

	ps = FUNC3(itir);
	va = FUNC0(ifa, ps);
	pte &= ~PAGE_FLAGS_RV_MASK;

	if (ps != _PAGE_SIZE_16M)
		FUNC4(vcpu, va, ps);
	gpfn = (pte & _PAGE_PPN_MASK) >> PAGE_SHIFT;
	if (FUNC2(gpfn))
		pte |= VTLB_PTE_IO;
	rid = FUNC5(vcpu, va);
	rid = rid & RR_RID_MASK;
	p_dtr = (struct thash_data *)&vcpu->arch.dtrs[slot];
	FUNC7((struct thash_data *)&vcpu->arch.dtrs[slot],
							pte, itir, va, rid);
	FUNC6(FUNC1(vcpu, dtr_regions), va);
}