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
struct iotlb_lock {scalar_t__ vict; scalar_t__ base; } ;
struct iommu {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_GFLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu*,struct iotlb_lock*) ; 

void FUNC4(struct iommu *obj)
{
	struct iotlb_lock l;

	FUNC1(obj->clk);

	l.base = 0;
	l.vict = 0;
	FUNC3(obj, &l);

	FUNC2(obj, 1, MMU_GFLUSH);

	FUNC0(obj->clk);
}