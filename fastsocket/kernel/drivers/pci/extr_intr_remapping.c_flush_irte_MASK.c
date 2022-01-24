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
struct irq_2_iommu {int irte_index; int sub_handle; int /*<<< orphan*/  irte_mask; struct intel_iommu* iommu; } ;
struct intel_iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  irq_2_ir_lock ; 
 int FUNC0 (struct intel_iommu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct irq_2_iommu* FUNC3 (int) ; 

int FUNC4(int irq)
{
	int rc;
	int index;
	struct intel_iommu *iommu;
	struct irq_2_iommu *irq_iommu;
	unsigned long flags;

	FUNC1(&irq_2_ir_lock, flags);
	irq_iommu = FUNC3(irq);
	if (!irq_iommu) {
		FUNC2(&irq_2_ir_lock, flags);
		return -1;
	}

	iommu = irq_iommu->iommu;

	index = irq_iommu->irte_index + irq_iommu->sub_handle;

	rc = FUNC0(iommu, index, irq_iommu->irte_mask);
	FUNC2(&irq_2_ir_lock, flags);

	return rc;
}