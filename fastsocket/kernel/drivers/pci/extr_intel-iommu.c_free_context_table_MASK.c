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
struct root_entry {int dummy; } ;
struct intel_iommu {int /*<<< orphan*/  lock; struct root_entry* root_entry; } ;
typedef  struct root_entry context_entry ;

/* Variables and functions */
 int ROOT_ENTRY_NR ; 
 int /*<<< orphan*/  FUNC0 (struct root_entry*) ; 
 struct root_entry* FUNC1 (struct root_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct intel_iommu *iommu)
{
	struct root_entry *root;
	int i;
	unsigned long flags;
	struct context_entry *context;

	FUNC2(&iommu->lock, flags);
	if (!iommu->root_entry) {
		goto out;
	}
	for (i = 0; i < ROOT_ENTRY_NR; i++) {
		root = &iommu->root_entry[i];
		context = FUNC1(root);
		if (context)
			FUNC0(context);
	}
	FUNC0(iommu->root_entry);
	iommu->root_entry = NULL;
out:
	FUNC3(&iommu->lock, flags);
}