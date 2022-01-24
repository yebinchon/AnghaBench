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
 int IOPGD_SECTION ; 
 int IOSECTION_MASK ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int* FUNC1 (struct iommu*,int) ; 

__attribute__((used)) static int FUNC2(struct iommu *obj, u32 da, u32 pa, u32 prot)
{
	u32 *iopgd = FUNC1(obj, da);

	*iopgd = (pa & IOSECTION_MASK) | prot | IOPGD_SECTION;
	FUNC0(iopgd, iopgd);
	return 0;
}