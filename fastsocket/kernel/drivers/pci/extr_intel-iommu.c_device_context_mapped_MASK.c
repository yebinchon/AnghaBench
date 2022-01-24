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
typedef  size_t u8 ;
struct root_entry {int dummy; } ;
struct intel_iommu {int /*<<< orphan*/  lock; struct root_entry* root_entry; } ;
struct context_entry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct context_entry*) ; 
 struct context_entry* FUNC1 (struct root_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct intel_iommu *iommu, u8 bus, u8 devfn)
{
	struct root_entry *root;
	struct context_entry *context;
	int ret;
	unsigned long flags;

	FUNC2(&iommu->lock, flags);
	root = &iommu->root_entry[bus];
	context = FUNC1(root);
	if (!context) {
		ret = 0;
		goto out;
	}
	ret = FUNC0(&context[devfn]);
out:
	FUNC3(&iommu->lock, flags);
	return ret;
}