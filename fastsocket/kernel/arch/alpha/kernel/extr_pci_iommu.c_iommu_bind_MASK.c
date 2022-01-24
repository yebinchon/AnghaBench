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
struct pci_iommu_arena {unsigned long* ptes; int /*<<< orphan*/  lock; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 unsigned long IOMMU_RESERVED_PTE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC4(struct pci_iommu_arena *arena, long pg_start, long pg_count, 
	   struct page **pages)
{
	unsigned long flags;
	unsigned long *ptes;
	long i, j;

	if (!arena) return -EINVAL;
	
	FUNC2(&arena->lock, flags);

	ptes = arena->ptes;

	for(j = pg_start; j < pg_start + pg_count; j++) {
		if (ptes[j] != IOMMU_RESERVED_PTE) {
			FUNC3(&arena->lock, flags);
			return -EBUSY;
		}
	}
		
	for(i = 0, j = pg_start; i < pg_count; i++, j++)
		ptes[j] = FUNC0(FUNC1(pages[i]));

	FUNC3(&arena->lock, flags);

	return 0;
}