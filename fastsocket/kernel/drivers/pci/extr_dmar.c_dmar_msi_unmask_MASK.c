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
struct intel_iommu {int /*<<< orphan*/  register_lock; scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ DMAR_FECTL_REG ; 
 struct intel_iommu* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(unsigned int irq)
{
	struct intel_iommu *iommu = FUNC0(irq);
	unsigned long flag;

	/* unmask it */
	FUNC2(&iommu->register_lock, flag);
	FUNC4(0, iommu->reg + DMAR_FECTL_REG);
	/* Read a reg to force flush the post write */
	FUNC1(iommu->reg + DMAR_FECTL_REG);
	FUNC3(&iommu->register_lock, flag);
}