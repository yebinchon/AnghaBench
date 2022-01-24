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
struct iommu {int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int (* enable ) (struct iommu*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* arch_iommu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iommu*) ; 

__attribute__((used)) static int FUNC3(struct iommu *obj)
{
	int err;

	if (!obj)
		return -EINVAL;

	FUNC1(obj->clk);

	err = arch_iommu->enable(obj);

	FUNC0(obj->clk);
	return err;
}