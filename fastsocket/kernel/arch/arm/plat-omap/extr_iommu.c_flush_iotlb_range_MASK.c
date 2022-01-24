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
typedef  scalar_t__ u32 ;
struct iommu {int dummy; } ;

/* Variables and functions */
 scalar_t__ IOPTE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct iommu*,scalar_t__) ; 

void FUNC1(struct iommu *obj, u32 start, u32 end)
{
	u32 da = start;

	while (da < end) {
		FUNC0(obj, da);
		/* FIXME: Optimize for multiple page size */
		da += IOPTE_SIZE;
	}
}