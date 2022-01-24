#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dmar_domain {int iommu_snooping; int /*<<< orphan*/  iommu_bmp; } ;
struct TYPE_2__ {int /*<<< orphan*/  ecap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__** g_iommus ; 
 int g_num_of_iommus ; 

__attribute__((used)) static void FUNC3(struct dmar_domain *domain)
{
	int i;

	domain->iommu_snooping = 1;

	i = FUNC1(domain->iommu_bmp, g_num_of_iommus);
	for (; i < g_num_of_iommus; ) {
		if (!FUNC0(g_iommus[i]->ecap)) {
			domain->iommu_snooping = 0;
			break;
		}
		i = FUNC2(domain->iommu_bmp, g_num_of_iommus, i+1);
	}
}