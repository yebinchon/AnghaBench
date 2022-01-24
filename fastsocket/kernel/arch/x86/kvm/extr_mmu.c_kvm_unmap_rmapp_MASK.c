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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PT_PRESENT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC2 (struct kvm*,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,int*) ; 
 int /*<<< orphan*/  shadow_trap_nonpresent_pte ; 

__attribute__((used)) static int FUNC5(struct kvm *kvm, unsigned long *rmapp,
			   unsigned long data)
{
	u64 *spte;
	int need_tlb_flush = 0;

	while ((spte = FUNC2(kvm, rmapp, NULL))) {
		FUNC0(!(*spte & PT_PRESENT_MASK));
		FUNC3("kvm_rmap_unmap_hva: spte %p %llx\n", spte, *spte);
		FUNC4(kvm, spte);
		FUNC1(spte, shadow_trap_nonpresent_pte);
		need_tlb_flush = 1;
	}
	return need_tlb_flush;
}