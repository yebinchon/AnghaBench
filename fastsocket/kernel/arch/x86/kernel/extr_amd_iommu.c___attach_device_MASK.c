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
typedef  int /*<<< orphan*/  u16 ;
struct protection_domain {int dev_cnt; int /*<<< orphan*/  lock; } ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct amd_iommu *iommu,
			    struct protection_domain *domain,
			    u16 devid)
{
	/* lock domain */
	FUNC1(&domain->lock);

	/* update DTE entry */
	FUNC0(devid, domain);

	domain->dev_cnt += 1;

	/* ready */
	FUNC2(&domain->lock);
}