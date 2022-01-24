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
typedef  int u32 ;
struct iommu {int /*<<< orphan*/  page_table_lock; } ;

/* Variables and functions */
 int IOPGD_SHIFT ; 
 int IOPGD_TABLE ; 
 int PTRS_PER_IOPGD ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu*) ; 
 int* FUNC2 (struct iommu*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct iommu *obj)
{
	int i;

	FUNC5(&obj->page_table_lock);

	for (i = 0; i < PTRS_PER_IOPGD; i++) {
		u32 da;
		u32 *iopgd;

		da = i << IOPGD_SHIFT;
		iopgd = FUNC2(obj, da);

		if (!*iopgd)
			continue;

		if (*iopgd & IOPGD_TABLE)
			FUNC3(FUNC4(iopgd, 0));

		*iopgd = 0;
		FUNC0(iopgd, iopgd);
	}

	FUNC1(obj);

	FUNC6(&obj->page_table_lock);
}