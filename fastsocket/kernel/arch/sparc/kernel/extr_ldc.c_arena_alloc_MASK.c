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
struct iommu_arena {unsigned long limit; unsigned long hint; int /*<<< orphan*/  map; } ;
struct ldc_iommu {struct iommu_arena arena; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static long FUNC5(struct ldc_iommu *iommu, unsigned long npages)
{
	struct iommu_arena *arena = &iommu->arena;
	unsigned long n, i, start, end, limit;
	int pass;

	limit = arena->limit;
	start = arena->hint;
	pass = 0;

again:
	n = FUNC1(arena->map, limit, start);
	end = n + npages;
	if (FUNC4(end >= limit)) {
		if (FUNC2(pass < 1)) {
			limit = start;
			start = 0;
			pass++;
			goto again;
		} else {
			/* Scanned the whole thing, give up. */
			return -1;
		}
	}

	for (i = n; i < end; i++) {
		if (FUNC3(i, arena->map)) {
			start = i + 1;
			goto again;
		}
	}

	for (i = n; i < end; i++)
		FUNC0(i, arena->map);

	arena->hint = end;

	return n;
}