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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  lpages; } ;
struct kvm {TYPE_1__ stat; } ;
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int KVM_NR_PAGE_SIZES ; 
 int PT_DIRECTORY_LEVEL ; 
 int PT_PAGE_SIZE_MASK ; 
 int PT_PAGE_TABLE_LEVEL ; 
 int PT_PRESENT_MASK ; 
 int PT_WRITABLE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 unsigned long* FUNC2 (struct kvm*,int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*,int,int) ; 
 int* FUNC6 (struct kvm*,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*,int*) ; 
 int shadow_trap_nonpresent_pte ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct kvm*,int) ; 

__attribute__((used)) static int FUNC11(struct kvm *kvm, u64 gfn)
{
	unsigned long *rmapp;
	u64 *spte;
	int i, write_protected = 0;

	gfn = FUNC10(kvm, gfn);
	rmapp = FUNC2(kvm, gfn, PT_PAGE_TABLE_LEVEL);

	spte = FUNC6(kvm, rmapp, NULL);
	while (spte) {
		FUNC0(!spte);
		FUNC0(!(*spte & PT_PRESENT_MASK));
		FUNC7("rmap_write_protect: spte %p %llx\n", spte, *spte);
		if (FUNC3(*spte)) {
			FUNC1(spte, *spte & ~PT_WRITABLE_MASK);
			write_protected = 1;
		}
		spte = FUNC6(kvm, rmapp, spte);
	}
	if (write_protected) {
		pfn_t pfn;

		spte = FUNC6(kvm, rmapp, NULL);
		pfn = FUNC9(*spte);
		FUNC4(pfn);
	}

	/* check for huge page mappings */
	for (i = PT_DIRECTORY_LEVEL;
	     i < PT_PAGE_TABLE_LEVEL + KVM_NR_PAGE_SIZES; ++i) {
		rmapp = FUNC2(kvm, gfn, i);
		spte = FUNC6(kvm, rmapp, NULL);
		while (spte) {
			FUNC0(!spte);
			FUNC0(!(*spte & PT_PRESENT_MASK));
			FUNC0((*spte & (PT_PAGE_SIZE_MASK|PT_PRESENT_MASK)) != (PT_PAGE_SIZE_MASK|PT_PRESENT_MASK));
			FUNC5("rmap_write_protect(large): spte %p %llx %lld\n", spte, *spte, gfn);
			if (FUNC3(*spte)) {
				FUNC8(kvm, spte);
				--kvm->stat.lpages;
				FUNC1(spte, shadow_trap_nonpresent_pte);
				spte = NULL;
				write_protected = 1;
			}
			spte = FUNC6(kvm, rmapp, spte);
		}
	}

	return write_protected;
}