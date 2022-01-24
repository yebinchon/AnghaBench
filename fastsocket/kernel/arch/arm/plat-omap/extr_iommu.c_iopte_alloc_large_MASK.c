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
 int IOPTE_LARGE ; 
 scalar_t__ FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 int* FUNC3 (struct iommu*,int) ; 
 int* FUNC4 (struct iommu*,int*,int) ; 

__attribute__((used)) static int FUNC5(struct iommu *obj, u32 da, u32 pa, u32 prot)
{
	u32 *iopgd = FUNC3(obj, da);
	u32 *iopte = FUNC4(obj, iopgd, da);
	int i;

	if (FUNC0(iopte))
		return FUNC1(iopte);

	for (i = 0; i < 16; i++)
		*(iopte + i) = (pa & IOLARGE_MASK) | prot | IOPTE_LARGE;
	FUNC2(iopte, iopte + 15);
	return 0;
}