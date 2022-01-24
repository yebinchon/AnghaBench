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
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct kvm*,unsigned long*,unsigned long) ; 
 int* FUNC5 (struct kvm*,unsigned long*,int*) ; 
 int shadow_accessed_mask ; 

__attribute__((used)) static int FUNC6(struct kvm *kvm, unsigned long *rmapp,
			 unsigned long data)
{
	u64 *spte;
	int young = 0;

	/*
	 * In case of absence of EPT Access and Dirty Bits supports,
	 * emulate the accessed bit for EPT, by checking if this page has
	 * an EPT mapping, and clearing it if it does. On the next access,
	 * a new EPT mapping will be established.
	 * This has some overhead, but not as much as the cost of swapping
	 * out actively used pages or breaking up actively used hugepages.
	 */
	if (!shadow_accessed_mask)
		return FUNC4(kvm, rmapp, data);

	spte = FUNC5(kvm, rmapp, NULL);
	while (spte) {
		int _young;
		u64 _spte = *spte;
		FUNC0(!FUNC3(_spte));
		_young = _spte & shadow_accessed_mask;
		if (_young) {
			young = 1;
			FUNC1((FUNC2(shadow_accessed_mask) - 1),
				 (unsigned long *)spte);
		}
		spte = FUNC5(kvm, rmapp, spte);
	}
	return young;
}