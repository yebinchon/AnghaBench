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
struct ldc_mtable_entry {int dummy; } ;
struct ldc_iommu {struct ldc_mtable_entry* page_table; } ;

/* Variables and functions */
 long FUNC0 (struct ldc_iommu*,unsigned long) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static struct ldc_mtable_entry *FUNC2(struct ldc_iommu *iommu,
					     unsigned long npages)
{
	long entry;

	entry = FUNC0(iommu, npages);
	if (FUNC1(entry < 0))
		return NULL;

	return iommu->page_table + entry;
}