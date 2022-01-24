#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct TYPE_5__ {int gfn; int /*<<< orphan*/  pfn; int /*<<< orphan*/  mmu_seq; } ;
struct TYPE_6__ {TYPE_1__ update_pte; } ;
struct kvm_vcpu {TYPE_2__ arch; TYPE_3__* kvm; } ;
typedef  int /*<<< orphan*/  pfn_t ;
typedef  int gpa_t ;
typedef  int gfn_t ;
struct TYPE_7__ {int /*<<< orphan*/  mmu_notifier_seq; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PT64_BASE_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_3__*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu, gpa_t gpa,
					  const u8 *new, int bytes)
{
	gfn_t gfn;
	int r;
	u64 gpte = 0;
	pfn_t pfn;

	if (bytes != 4 && bytes != 8)
		return;

	/*
	 * Assume that the pte write on a page table of the same type
	 * as the current vcpu paging mode.  This is nearly always true
	 * (might be false while changing modes).  Note it is verified later
	 * by update_pte().
	 */
	if (FUNC2(vcpu)) {
		/* Handle a 32-bit guest writing two halves of a 64-bit gpte */
		if ((bytes == 4) && (gpa % 4 == 0)) {
			r = FUNC4(vcpu->kvm, gpa & ~(u64)7, &gpte, 8);
			if (r)
				return;
			FUNC6((void *)&gpte + (gpa % 8), new, 4);
		} else if ((bytes == 8) && (gpa % 8 == 0)) {
			FUNC6((void *)&gpte, new, 8);
		}
	} else {
		if ((bytes == 4) && (gpa % 4 == 0))
			FUNC6((void *)&gpte, new, 4);
	}
	if (!FUNC3(gpte))
		return;
	gfn = (gpte & PT64_BASE_ADDR_MASK) >> PAGE_SHIFT;

	vcpu->arch.update_pte.mmu_seq = vcpu->kvm->mmu_notifier_seq;
	FUNC7();
	pfn = FUNC0(vcpu->kvm, gfn);

	if (FUNC1(pfn)) {
		FUNC5(pfn);
		return;
	}
	vcpu->arch.update_pte.gfn = gfn;
	vcpu->arch.update_pte.pfn = pfn;
}