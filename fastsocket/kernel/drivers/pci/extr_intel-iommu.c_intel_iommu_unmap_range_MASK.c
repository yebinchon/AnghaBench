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
struct iommu_domain {struct dmar_domain* priv; } ;
struct dmar_domain {unsigned long max_addr; } ;

/* Variables and functions */
 unsigned long VTD_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC1(struct iommu_domain *domain,
				    unsigned long iova, size_t size)
{
	struct dmar_domain *dmar_domain = domain->priv;

	if (!size)
		return;

	FUNC0(dmar_domain, iova >> VTD_PAGE_SHIFT,
			    (iova + size - 1) >> VTD_PAGE_SHIFT);

	if (dmar_domain->max_addr == iova + size)
		dmar_domain->max_addr = iova;
}