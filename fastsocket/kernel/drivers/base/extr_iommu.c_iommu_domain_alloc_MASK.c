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
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {int (* domain_init ) (struct iommu_domain*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* iommu_ops ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_domain*) ; 
 struct iommu_domain* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iommu_domain*) ; 

struct iommu_domain *FUNC3(void)
{
	struct iommu_domain *domain;
	int ret;

	domain = FUNC1(sizeof(*domain), GFP_KERNEL);
	if (!domain)
		return NULL;

	ret = iommu_ops->domain_init(domain);
	if (ret)
		goto out_free;

	return domain;

out_free:
	FUNC0(domain);

	return NULL;
}