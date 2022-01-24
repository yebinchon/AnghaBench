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
struct intel_iommu {int irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  dmar_fault ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct intel_iommu*) ; 

int FUNC6(struct intel_iommu *iommu)
{
	int irq, ret;

	/*
	 * Check if the fault interrupt is already initialized.
	 */
	if (iommu->irq)
		return 0;

	irq = FUNC1();
	if (!irq) {
		FUNC3("IOMMU: no free vectors\n");
		return -EINVAL;
	}

	FUNC5(irq, iommu);
	iommu->irq = irq;

	ret = FUNC0(irq);
	if (ret) {
		FUNC5(irq, NULL);
		iommu->irq = 0;
		FUNC2(irq);
		return ret;
	}

	ret = FUNC4(irq, dmar_fault, 0, iommu->name, iommu);
	if (ret)
		FUNC3("IOMMU: can't request irq\n");
	return ret;
}