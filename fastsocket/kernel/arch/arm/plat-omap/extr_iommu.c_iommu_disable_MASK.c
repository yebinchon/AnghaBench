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
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct iommu*) ;} ;

/* Variables and functions */
 TYPE_1__* arch_iommu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu*) ; 

__attribute__((used)) static void FUNC3(struct iommu *obj)
{
	if (!obj)
		return;

	FUNC1(obj->clk);

	arch_iommu->disable(obj);

	FUNC0(obj->clk);
}