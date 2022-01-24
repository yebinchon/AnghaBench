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
struct iommu {int dummy; } ;

/* Variables and functions */
 int IOLARGE_MASK ; 
 size_t IOPGD_SIZE ; 
 int IOPGD_SUPER ; 
 int IOPGD_TABLE ; 
 int IOPTE_LARGE ; 
 size_t IOPTE_SIZE ; 
 int IOSUPER_MASK ; 
 int PTRS_PER_IOPTE ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int* FUNC2 (struct iommu*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static size_t FUNC6(struct iommu *obj, u32 da)
{
	size_t bytes;
	u32 *iopgd = FUNC2(obj, da);
	int nent = 1;

	if (!*iopgd)
		return 0;

	if (*iopgd & IOPGD_TABLE) {
		int i;
		u32 *iopte = FUNC4(iopgd, da);

		bytes = IOPTE_SIZE;
		if (*iopte & IOPTE_LARGE) {
			nent *= 16;
			/* rewind to the 1st entry */
			iopte = (u32 *)((u32)iopte & IOLARGE_MASK);
		}
		bytes *= nent;
		FUNC5(iopte, 0, nent * sizeof(*iopte));
		FUNC1(iopte, iopte + (nent - 1) * sizeof(*iopte));

		/*
		 * do table walk to check if this table is necessary or not
		 */
		iopte = FUNC4(iopgd, 0);
		for (i = 0; i < PTRS_PER_IOPTE; i++)
			if (iopte[i])
				goto out;

		FUNC3(iopte);
		nent = 1; /* for the next L1 entry */
	} else {
		bytes = IOPGD_SIZE;
		if ((*iopgd & IOPGD_SUPER) == IOPGD_SUPER) {
			nent *= 16;
			/* rewind to the 1st entry */
			iopgd = (u32 *)((u32)iopgd & IOSUPER_MASK);
		}
		bytes *= nent;
	}
	FUNC5(iopgd, 0, nent * sizeof(*iopgd));
	FUNC0(iopgd, iopgd + (nent - 1) * sizeof(*iopgd));
out:
	return bytes;
}