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
typedef  int u64 ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  scalar_t__ pfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SHIFT ; 
 int PT64_BASE_ADDR_MASK ; 
 int PT_WRITABLE_MASK ; 
 int SPTE_HOST_WRITEABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int* FUNC10 (struct kvm*,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm*,int*) ; 
 int shadow_trap_nonpresent_pte ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct kvm *kvm, unsigned long *rmapp,
			     unsigned long data)
{
	int need_flush = 0;
	u64 *spte, new_spte;
	pte_t *ptep = (pte_t *)data;
	pfn_t new_pfn;

	FUNC1(FUNC7(*ptep));
	new_pfn = FUNC8(*ptep);
	spte = FUNC10(kvm, rmapp, NULL);
	while (spte) {
		FUNC0(!FUNC3(*spte));
		FUNC11("kvm_set_pte_rmapp: spte %p %llx\n", spte, *spte);
		need_flush = 1;
		if (FUNC9(*ptep)) {
			FUNC12(kvm, spte);
			FUNC2(spte, shadow_trap_nonpresent_pte);
			spte = FUNC10(kvm, rmapp, NULL);
		} else {
			new_spte = *spte &~ (PT64_BASE_ADDR_MASK);
			new_spte |= (u64)new_pfn << PAGE_SHIFT;

			new_spte &= ~PT_WRITABLE_MASK;
			new_spte &= ~SPTE_HOST_WRITEABLE;
			if (FUNC4(*spte))
				FUNC6(FUNC13(*spte));
			FUNC2(spte, new_spte);
			spte = FUNC10(kvm, rmapp, spte);
		}
	}
	if (need_flush)
		FUNC5(kvm);

	return 0;
}